
(ns app.client
  (:require [respo.core :refer [render! clear-cache! realize-ssr!]]
            [respo.cursor :refer [update-states]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.schema :as schema]
            [app.config :as config]
            [ws-edn.client :refer [ws-connect! ws-send!]]
            [recollect.patch :refer [patch-twig]]
            [cumulo-util.core :refer [on-page-touch repeat!]]
            ["url-parse" :as url-parse]
            [applied-science.js-interop :as j]
            ["shortid" :as shortid])
  (:require-macros [clojure.core.strint :refer [<<]]))

(declare dispatch!)

(declare connect!)

(declare simulate-login!)

(defonce *states (atom {:states {:cursor []}, :records {}}))

(defonce *store (atom nil))

(defn simulate-login! []
  (let [raw (.getItem js/localStorage (:storage-key config/site))]
    (if (some? raw)
      (do (println "Found storage.") (dispatch! :user/log-in (read-string raw)))
      (do (println "Found no storage.")))))

(defn dispatch! [op op-data]
  (when (and config/dev? (not= op :states)) (println "Dispatch" op op-data))
  (case op
    :states (reset! *states (update-states @*states op-data))
    :effect/connect (connect! nil)
    :effect/clear (swap! *states assoc :records {})
    (ws-send! {:kind :op, :op op, :data op-data})))

(defn connect! [on-open]
  (let [url-obj (url-parse js/location.href true)
        host (or (j/get-in url-obj [:query :host]) js/location.hostname)
        port (or (j/get-in url-obj [:query :port]) (:port config/site))]
    (ws-connect!
     (<< "ws://~{host}:~{port}")
     {:on-open (fn [] (simulate-login!) (if (fn? on-open) (on-open))),
      :on-close (fn [event] (reset! *store nil) (js/console.error "Lost connection!")),
      :on-data (fn [data]
        (case (:kind data)
          :patch
            (let [changes (:data data)]
              (when config/dev? (js/console.log "Changes" (clj->js changes)))
              (reset! *store (patch-twig @*store changes)))
          :ping
            (let [ping-id (:data data)]
              (swap! *states assoc-in [:records ping-id :finish-time] (.now js/Date)))
          (println "unknown kind:" data)))})))

(def mount-target (.querySelector js/document ".app"))

(defn render-app! [renderer]
  (renderer
   mount-target
   (comp-container (:states @*states) (:records @*states) @*store)
   dispatch!))

(def ssr? (some? (.querySelector js/document "meta.respo-ssr")))

(defn start-test-loop! []
  (repeat!
   2
   (fn []
     (if (= js/document.visibilityState "visible")
       (let [ping-id (.generate shortid)]
         (ws-send! {:kind :ping, :op :effect/ping, :data ping-id})
         (swap!
          *states
          assoc-in
          [:records ping-id]
          {:start-time (.now js/Date), :finish-time nil}))))))

(defn main! []
  (println "Running mode:" (if config/dev? "dev" "release"))
  (if ssr? (render-app! realize-ssr!))
  (render-app! render!)
  (connect! (fn [] (start-test-loop!)))
  (add-watch *store :changes #(render-app! render!))
  (add-watch *states :changes #(render-app! render!))
  (on-page-touch #(if (nil? @*store) (connect! nil)))
  (println "App started!"))

(defn reload! [] (clear-cache!) (render-app! render!) (println "Code updated."))

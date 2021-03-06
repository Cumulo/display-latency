
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> >> div list-> span button pre]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.navigation :refer [comp-navigation]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.messages :refer [comp-messages]]
            [cumulo-reel.comp.reel :refer [comp-reel]]
            [app.config :refer [dev?]]
            [app.schema :as schema]
            [app.config :as config]))

(defcomp
 comp-home
 (records)
 (div
  {:style (merge ui/expand ui/row)}
  (list->
   {:style (merge ui/expand {:padding 16, :max-width 320})}
   (->> records
        (sort-by (fn [[k info]] (unchecked-negate (:start-time info))))
        (map
         (fn [[k info]]
           [k
            (div
             {}
             (<> (:start-time info) {:font-family ui/font-code})
             (=< 16 nil)
             (if (nil? (:finish-time info))
               (<> "...")
               (<>
                (str (- (:finish-time info) (:start-time info)) "ms")
                {:font-family ui/font-code})))]))))
  (div
   {:style {:padding 16}}
   (button
    {:style ui/button, :inner-text "Reset", :on-click (fn [e d!] (d! :effect/clear nil))}))))

(defcomp
 comp-offline
 ()
 (div
  {:style (merge
           ui/global
           ui/fullscreen
           ui/column-dispersive
           {:background-color (:theme config/site)})}
  (div {:style {:height 0}})
  (div
   {:style {:background-image (str "url(" (:icon config/site) ")"),
            :width 128,
            :height 128,
            :background-size :contain}})
  (div
   {:style {:cursor :pointer, :line-height "32px"},
    :on-click (fn [e d!] (d! :effect/connect nil))}
   (<> "No connection..." {:font-family ui/font-fancy, :font-size 24}))))

(defcomp
 comp-status-color
 (color)
 (div
  {:style (let [size 24]
     {:width size,
      :height size,
      :position :absolute,
      :bottom 60,
      :left 8,
      :background-color color,
      :border-radius "50%",
      :opacity 0.6,
      :pointer-events :none})}))

(defcomp
 comp-container
 (states records store)
 (let [state (:data states)
       session (:session store)
       router (:router store)
       router-data (:data router)]
   (if (nil? store)
     (comp-offline)
     (div
      {:style (merge ui/global ui/fullscreen ui/column)}
      (comp-navigation (:logged-in? store) (:count store))
      (if (:logged-in? store)
        (case (:name router)
          :home (comp-home records)
          :profile (comp-profile (:user store) (:data router))
          (<> router))
        (comp-login (>> states :login)))
      (comp-status-color (:color store))
      (when dev? (comp-inspect "Store" store {:bottom 0, :left 0, :max-width "100%"}))
      (comp-messages
       (get-in store [:session :messages])
       {}
       (fn [info d!] (d! :session/remove-message info)))
      (when dev? (comp-reel (:reel-length store) {}))))))

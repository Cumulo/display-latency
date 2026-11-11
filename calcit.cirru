
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/UiAction
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
      :type-slots $ {} $ :dispatch-op 'app.schema/UiAction
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*login-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *login-state initial-state
          :examples $ []
          :schema $ quote $ Ref schema/LoginState
        '*ping-timer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *ping-timer None
          :examples $ []
          :schema $ quote $ Ref (Option Number)
        '*records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *records ({})
          :examples $ []
          :schema $ quote $ Ref (Map String schema/LatencyRecord)
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store None
          :examples $ []
          :schema $ quote $ Ref (Option schema/ClientStore)
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! (on-open)
            let
                location $ browser/location-snapshot
                query $ shared/search-params-create $ :search location
                host $ match (shared/search-params-get query |host)
                  (:none) (:hostname location)
                  (:some value)
                    if (empty? value) (:hostname location) value
                port $ match (shared/search-params-get query |port)
                  (:none)
                    str $ :port config/site
                  (:some value)
                    if (empty? value)
                      str $ :port config/site
                      , value
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event)
                    hint-fn $ Fn Dynamic $ -> Unit
                    simulate-login!
                    on-open
                    , &unit
                  :on-close $ fn (event)
                    hint-fn $ Fn Dynamic $ -> Unit
                    stop-test-loop!
                    reset! *store None
                    println "|Lost connection!"
                  :on-data $ fn (data)
                    hint-fn $ Fn Dynamic $ -> Unit
                    match (schema/decode-server-packet data)
                      (:err detail) (println "|Rejected server packet:" detail)
                      (:ok packet) (on-server-data packet)
                    , &unit
                  :class-mapper schema/client-wire-classes
            , &unit
          :examples $ []
          :schema $ quote $ Fn
            Fn $ -> Unit
            -> Unit
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (action)
            match action
              (:login-state state) (reset! *login-state state)
              (:server op) (send-op! op)
              (:connect) (connect! start-test-loop!)
              (:clear)
                reset! *records $ {}
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/UiAction (-> Unit)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect! $ fn () $ start-test-loop!
            add-watch! *store :changes $ fn (current previous)
              hint-fn $ Fn (Option app.schema/ClientStore) (Option app.schema/ClientStore) (-> Unit)
              render-app!
            add-watch! *login-state :changes $ fn (current previous)
              hint-fn $ Fn app.schema/LoginState app.schema/LoginState $ -> Unit
              render-app!
            add-watch! *records :changes $ fn (current previous)
              hint-fn $ Fn (Map String app.schema/LatencyRecord) (Map String app.schema/LatencyRecord) (-> Unit)
              render-app!
            on-page-touch $ fn ()
              hint-fn $ Fn $ -> Unit
              when (.none? @*store) (connect! start-test-loop!)
              , &unit
            println "|App started!"
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            let
                document $ js-cast js/document 'respo.dom/DomDocument
                target $ document .query-selector |.app
              if (js-nullish? target) (raise "|Missing .app mount target") target
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (packet)
            match packet
              (:patch changes)
                match (schema/apply-store-patch @*store changes)
                  (:ok store)
                    reset! *store $ Some store
                  (:err detail) (println "|Rejected store patch:" detail)
              (:ping id)
                swap! *records $ fn (records)
                  hint-fn $ Fn (Map String app.schema/LatencyRecord)
                    -> $ Map String app.schema/LatencyRecord
                  match (get records id)
                    (:none) records
                    (:some record)
                      .assoc records id $ struct-with record $ :finish-time
                        Some $ checked-now-ms
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ServerPacket (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!) (render-app!) (println "|Code updated.") &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn ()
                hint-fn $ Fn $ -> respo.schema/Component
                comp-container @*login-state @*records @*store
              fn (value)
                hint-fn $ Fn *dispatch-op $ -> Unit
                match (schema/decode-ui-action value)
                  (:err detail) (println "|Rejected UI action:" detail)
                  (:ok action) (dispatch! action)
                , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'send-op! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn send-op! (op)
            ws-send! $ schema/op-wire op
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit)
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            match
              browser/storage-get $ :storage-key config/site
              (:none) (println "|Found no storage.")
              (:some text)
                match
                  schema/decode-client-op :user/log-in $ parse-cirru-edn text
                  (:ok op) (send-op! op)
                  (:err detail) (println "|Rejected stored credentials:" detail)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'start-test-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn start-test-loop! () (stop-test-loop!)
            reset! *ping-timer $ Some $ browser/set-interval!
              fn ()
                hint-fn $ Fn $ -> Unit
                when
                  and
                    = (browser/visibility-state) (browser/VisibilityState :visible)
                    ws-connected?
                  let
                      id $ generate-id!
                      record $ schema/LatencyRecord :id id :start-time (checked-now-ms) :finish-time None
                    swap! *records
                      fn (current key value) (.assoc current key value)
                      , id record
                    ws-send! $ {} (:kind :ping) (:op :effect/ping) (:data id)
                , &unit
              , 2000
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'stop-test-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stop-test-loop! ()
            match @*ping-timer
              (:some handle) (browser/clear-interval! handle)
              (:none) &unit
            reset! *ping-timer None
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.login :refer $ initial-state
            app.comp.container :refer $ comp-container
            cljs.reader :refer $ read-string
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send! ws-connected? checked-now-ms
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (login-state records maybe-store)
            match maybe-store
              (:none) (comp-offline)
              (:some store)
                let
                    router $ :router store
                  div
                    {} $ :style $ merge ui/global ui/fullscreen ui/column
                    comp-navigation (:logged-in? store) (:count store)
                    if (:logged-in? store)
                      case (:name router)
                        :home $ comp-home records
                        :profile $ match (:user store)
                          (:none) (comp-login login-state)
                          (:some user)
                            comp-profile user $ decode-map-as
                              .unwrap $ :data router
                              Map Number $ Option String
                        <> $ str router
                      comp-login login-state
                    comp-status-color $ :color store
                    if dev?
                      Some $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                      , None
                    comp-messages
                      filter-map-kv
                        :messages $ :session store
                        fn (id message)
                          hint-fn $ Fn String app.schema/Message $ ->
                            MapEntryDecision String $ Map Tag String
                          MapEntryDecision :keep id $ {}
                            :id $ :id message
                            :text $ :text message
                      {}
                      fn (info d!)
                        hint-fn $ Fn (Map Tag Dynamic)
                          Fn app.schema/UiAction $ -> Unit
                          -> Unit
                        d! $ schema/UiAction :server $ schema/Op :session/remove-message
                          decode-map-as
                            .unwrap $ get info :id
                            , 'String
                    if dev?
                      Some $ comp-reel (:reel-length store) ({})
                      , None
          :examples $ []
          :schema $ quote $ Fn schema/LoginState (Map String schema/LatencyRecord) (Option schema/ClientStore) (-> respo.schema/Component)
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (records)
            div
              {} $ :style $ merge ui/expand ui/row
              keyed->
                {} $ :style $ merge ui/expand
                  {} (:padding 16) (:max-width 320)
                -> records (.distinct-values) (.to-list)
                  .sort-by $ fn (record)
                    hint-fn $ Fn app.schema/LatencyRecord $ -> Number
                    negate $ :start-time record
                  .map $ fn (record)
                    hint-fn $ Fn app.schema/LatencyRecord $ -> respo.schema/ChildPair
                    keyed-element (:id record)
                      div ({})
                        <>
                          str $ :start-time record
                          {} $ :font-family ui/font-code
                        space-x 16
                        match (:finish-time record)
                          (:none) (<> |...)
                          (:some finish)
                            <>
                              str
                                - finish $ :start-time record
                                , |ms
                              {} $ :font-family ui/font-code
              div
                {} $ :style $ {} (:padding 16)
                button $ {} (:style ui/button) (:inner-text |Reset)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/UiAction $ -> Unit
                      -> Unit
                    d! $ schema/UiAction :clear
          :examples $ []
          :schema $ quote $ Fn (Map String schema/LatencyRecord) (-> respo.schema/Component)
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ :theme config/site
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/UiAction $ -> Unit
                      -> Unit
                    d! $ schema/UiAction :connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div keyed-> keyed-element span button pre
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ space-x space-y
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (state)
            div
              {} $ :style $ merge ui/flex ui/center
              div ({})
                div
                  {} $ :style $ {}
                  div ({})
                    input $ {} (:placeholder |Username)
                      :value $ :username state
                      :style ui/input
                      :on-input $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/UiAction $ -> Unit
                          -> Unit
                        d! $ schema/UiAction :login-state $ struct-with state
                          :username $ decode-map-as (:value e) 'String
                  space-y 8
                  div ({})
                    input $ {} (:placeholder |Password)
                      :value $ :password state
                      :style ui/input
                      :on-input $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/UiAction $ -> Unit
                          -> Unit
                        d! $ schema/UiAction :login-state $ struct-with state
                          :password $ decode-map-as (:value e) 'String
                space-y 8
                div
                  {} $ :style $ {} (:text-align :right)
                  span $ {} (:inner-text "|Sign up")
                    :style $ merge ui/link
                    :on-click $ on-submit (:username state) (:password state) true
                  space-x 8
                  span $ {} (:inner-text "|Log in")
                    :style $ merge ui/link
                    :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ quote $ Fn schema/LoginState (-> respo.schema/Component)
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (schema/LoginState :username | :password |)
          :examples $ []
          :schema $ quote schema/LoginState
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              hint-fn $ Fn respo.schema/RespoEvent
                Fn app.schema/UiAction $ -> Unit
                -> Unit
              dispatch! $ if signup?
                schema/UiAction :server $ schema/Op :user/sign-up username password
                schema/UiAction :server $ schema/Op :user/log-in username password
              browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
              , &unit
          :examples $ []
          :schema $ quote $ Fn String String Bool
            -> $ Fn respo.schema/RespoEvent
              Fn schema/UiAction $ -> Unit
              -> Unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ space-x space-y
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.config :as config
            js-ffi.browser :as browser
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0 (Some 0.1)
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/UiAction $ -> Unit
                      -> Unit
                    d! $ schema/UiAction :server $ schema/Op :router/change
                      struct-with schema/router $ :name :home
                  :style $ {} $ :cursor :pointer
                <> $ :title config/site
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/UiAction $ -> Unit
                      -> Unit
                    d! $ schema/UiAction :server $ schema/Op :router/change
                      struct-with schema/router $ :name :profile
                <> $ if logged-in? |Me |Guest
                space-x 8
                <> $ str count-members
          :examples $ []
          :schema $ quote $ Fn Bool Number (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ space-x space-y
            respo.core :refer $ defcomp <> span div
            app.config :as config
            app.schema :as schema
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ :name user
              space-y 16
              div
                {} $ :style ui/row
                <> |Members:
                space-x 8
                keyed->
                  {} $ :style ui/row
                  -> members (.to-list)
                    .map $ fn (entry)
                      hint-fn $ Fn
                        Tuple Number $ Option String
                        -> respo.schema/ChildPair
                      keyed-element (nth entry 0)
                        div
                          {} $ :style $ {} (:padding "|0 8px")
                            :border $ str "|1px solid " $ hsl 0 0 80
                            :border-radius |16px
                            :margin "|0 4px"
                          <> $ .unwrap-or (nth entry 1) |Guest
              space-y 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/UiAction $ -> Unit
                        -> Unit
                      let
                          location $ browser/location-snapshot
                          query $ shared/search-params-create $ :search location
                        shared/search-params-set! query |time $ str $ shared/now-ms
                        browser/location-replace! $ str (:origin location) (:pathname location) |? (shared/search-params-string query) (:hash location)
                  <> |Refresh
                space-x 8
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/UiAction $ -> Unit
                        -> Unit
                      dispatch! $ schema/UiAction :server $ schema/Op :user/log-out
                      browser/storage-remove! $ :storage-key config/site
                      , &unit
                  <> "|Log out"
          :examples $ []
          :schema $ quote $ Fn schema/ClientUser
            Map Number $ Option String
            -> respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp keyed-> keyed-element <> span div button
            respo.comp.space :refer $ space-x space-y
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:port Number) (:title String) (:icon String) (:theme String) (:storage-key String) (:storage-file String)
          :examples $ []
          :schema $ quote StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            Site :port 11021 :title "|Display Latency" :icon |http://cdn.tiye.me/logo/cumulo.png :theme |#eeeeff :storage-key |display-latency :storage-file |storage.cirru
          :examples $ []
          :schema $ quote Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ClientPacket $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ClientPacket (:ping String) (:op app.schema/Op)
          :examples $ []
          :schema $ quote EnumDef
        'ClientStore $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientStore (:logged-in? Bool) (:session app.schema/Session)
            :user $ Option app.schema/ClientUser
            :router app.schema/Router
            :count Number
            :color String
            :reel-length Number
          :examples $ []
          :schema $ quote StructDef
        'ClientUser $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientUser (:name String) (:id String)
            :nickname $ Option String
            :avatar $ Option String
          :examples $ []
          :schema $ quote StructDef
        'Db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Db
            :sessions $ Map Number app.schema/Session
            :users $ Map String app.schema/User
          :examples $ []
          :schema $ quote StructDef
        'LatencyRecord $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LatencyRecord (:start-time Number)
            :finish-time $ Option Number
            :id String
          :examples $ []
          :schema $ quote StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username String) (:password String)
          :examples $ []
          :schema $ quote StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:id String) (:text String)
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:session/connect) (:session/disconnect) (:session/remove-message String) (:user/log-in String String) (:user/sign-up String String) (:user/log-out) (:router/change app.schema/Router) (:effect/persist) (:reel/reset) (:reel/merge)
          :examples $ []
          :schema $ quote EnumDef
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name Tag)
            :title $ Option String
            :data $ Option $ Map Dynamic Dynamic
            :router $ Option app.schema/Router
          :examples $ []
          :schema $ quote StructDef
        'ServerPacket $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ServerPacket (:ping String)
            :patch $ List recollect.schema/change-op
          :examples $ []
          :schema $ quote EnumDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session
            :user-id $ Option String
            :id $ Option Number
            :nickname $ Option String
            :router app.schema/Router
            :messages $ Map String app.schema/Message
          :examples $ []
          :schema $ quote StructDef
        'UiAction $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum UiAction (:login-state app.schema/LoginState) (:server app.schema/Op) (:connect) (:clear)
          :examples $ []
          :schema $ quote EnumDef
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:name String) (:id String)
            :nickname $ Option String
            :avatar $ Option String
            :password String
          :examples $ []
          :schema $ quote StructDef
        'apply-store-patch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn apply-store-patch (store changes)
            match
              match store
                (:some value) (try-patch-twig value changes)
                (:none) (try-patch-twig nil changes)
              (:err detail)
                Result :err $ patch-error-message detail
              (:ok value) (decode-client-store value)
          :examples $ []
          :schema $ quote $ Fn (Option ClientStore) (List recollect.schema/change-op)
            -> $ Result ClientStore String
          :tests $ [] $ %{} 'TestEntry (:name |roundtrips-initial-and-profile-wire-patches)
            :code $ quote $ let
                receive $ fn (store text)
                  hint-fn $ Fn (Option app.schema/ClientStore) String $ -> (Result app.schema/ClientStore String)
                  match
                    decode-server-packet $ parse-cirru-edn text client-wire-classes
                    (:err detail) (Result :err detail)
                    (:ok packet)
                      match packet
                        (:patch changes) (apply-store-patch store changes)
                        (:ping _) (Result :err "|Expected a patch packet")
                base $ ClientStore :logged-in? true :session
                  struct-with session
                    :id $ Some 1
                    :user-id $ Some |u1
                    :messages $ {} $ |m1 (Message :id |m1 :text |hello)
                  , :user
                    Some $ ClientUser :name |demo :id |u1 :nickname (Some |nick) :avatar None
                    , :router router :count 1 :color |red :reel-length 0
                next $ struct-with base
                  :router $ struct-with router (:name :profile)
                    :router $ Some $ struct-with router (:name :home)
                    :data $ Some $ {}
                      1 $ Some |demo
                      :message $ Message :id |opaque :text |payload
                  :reel-length 1
                initial $ receive None $ format-cirru-edn
                  {} (:kind :patch)
                    :data $ diff-twig nil base $ {} (:key :id)
                updated $ match initial
                  (:err detail) (raise detail)
                  (:ok store)
                    receive (Some store)
                      format-cirru-edn $ {} (:kind :patch)
                        :data $ diff-twig base next $ {} (:key :id)
              assert= (Result :ok base) initial
              assert= (Result :ok next) updated
            :tags $ #{} :client :server
        'client-wire-classes $ %{} 'CodeEntry
          :doc "|EDN wire boundary: enum definitions and actual Struct prototypes preserve nominal identity and field contracts. No traversal or conversion of opaque route data."
          :code $ quote $ def client-wire-classes
            {} (:Option Option) (:change-op change-op) (:Router router) (:Session session)
              :Message $ Message :id | :text |
              :ClientUser $ ClientUser :name | :id | :nickname None :avatar None
              :ClientStore $ ClientStore :logged-in? false :session session :user None :router router :count 0 :color | :reel-length 0
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            Db :sessions ({}) :users $ {}
          :examples $ []
          :schema $ quote Db
        'decode-action-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-action-op (value)
            if (enum? value)
              match (enum-definition value)
                (:none) (Result :err "|Expected an owned Op enum")
                (:some definition)
                  if (= definition Op)
                    match value
                      (:router/change router) (decode-client-op :router/change router)
                      _ $ try-decode-map-as value 'app.schema/Op
                    Result :err "|Expected an owned Op enum"
              Result :err "|Expected an operation enum"
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Result Op String
        'decode-client-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-client-op (tag data)
            try
              Result :ok $ match tag
                :session/connect $ do (decode-map-as data 'Nil) (Op :session/connect)
                :session/disconnect $ do (decode-map-as data 'Nil) (Op :session/disconnect)
                :user/log-out $ do (decode-map-as data 'Nil) (Op :user/log-out)
                :effect/persist $ do (decode-map-as data 'Nil) (Op :effect/persist)
                :reel/reset $ do (decode-map-as data 'Nil) (Op :reel/reset)
                :reel/merge $ do (decode-map-as data 'Nil) (Op :reel/merge)
                :user/log-in $ let
                    credentials $ decode-map-as data $ List String
                  if
                    = 2 $ .len credentials
                    Op :user/log-in
                      .unwrap $ nth credentials 0
                      .unwrap $ nth credentials 1
                    raise "|Expected two credential strings"
                :user/sign-up $ let
                    credentials $ decode-map-as data $ List String
                  if
                    = 2 $ .len credentials
                    Op :user/sign-up
                      .unwrap $ nth credentials 0
                      .unwrap $ nth credentials 1
                    raise "|Expected two credential strings"
                :session/remove-message $ Op :session/remove-message $ decode-map-as data 'String
                :router/change $ Op :router/change $ decode-map-as (router-input data) 'app.schema/Router
                _ $ raise $ str "|Unknown client operation: " tag
              fn (detail)
                hint-fn $ Fn String $ -> (Result app.schema/Op String)
                Result :err detail
          :examples $ []
          :schema $ quote $ Fn Tag Dynamic
            -> $ Result Op String
        'decode-client-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-client-store (value)
            try
              let
                  source $ struct-input value
                  user $ .map
                    decode-map-as
                      optional-input $ get source :user
                      Option Dynamic
                    , user-input
                try-decode-map-as
                  merge source $ {}
                    :session $ session-input $ .unwrap (get source :session)
                    :router $ router-input $ .unwrap (get source :router)
                    :user user
                  , 'app.schema/ClientStore
              fn (detail)
                hint-fn $ Fn String $ -> (Result app.schema/ClientStore String)
                Result :err detail
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Result ClientStore String
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (value)
            try
              let
                  source $ struct-input value
                try-decode-map-as
                  .assoc
                    .assoc source :sessions $ filter-map-kv
                      decode-map-as
                        .unwrap-or (get source :sessions) ({})
                        Map Number Dynamic
                      fn (key value)
                        hint-fn $ Fn Number Dynamic $ ->
                          MapEntryDecision Number $ Map Tag Dynamic
                        MapEntryDecision :keep key $ session-input value
                    , :users $ filter-map-kv
                      decode-map-as
                        .unwrap-or (get source :users) ({})
                        Map String Dynamic
                      fn (key value)
                        hint-fn $ Fn String Dynamic $ ->
                          MapEntryDecision String $ Map Tag Dynamic
                        MapEntryDecision :keep key $ user-input value
                  , 'app.schema/Db
              fn (detail)
                hint-fn $ Fn String $ -> (Result app.schema/Db String)
                Result :err detail
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Result Db String
          :tests $ []
            %{} 'TestEntry (:name |decodes-legacy-bare-maps)
              :code $ quote $ match
                parse-database "|{} (:users ({} (|u1 $ {} (:id |u1) (:name |demo) (:nickname |nick) (:avatar nil) (:password |hash)))) (:sessions ({} (1 $ {} (:id 1) (:user-id |u1) (:nickname nil) (:router ({} (:name :profile) (:data nil) (:router nil))) (:messages ({} (|m1 $ {} (:id |m1) (:text |hello)))))))"
                (:err detail) (raise detail)
                (:ok db)
                  let
                      session $ .unwrap $ get (:sessions db) 1
                      user $ .unwrap $ get (:users db) |u1
                    assert= (Some |u1) (:user-id session)
                    assert= (Some 1) (:id session)
                    assert= None $ :nickname session
                    assert= :profile $ :name $ :router session
                    assert= None $ :data $ :router session
                    assert= (Some |nick) (:nickname user)
                    assert= None $ :avatar user
                    assert= |hello $ :text $ .unwrap
                      get (:messages session) |m1
              :tags $ #{} :server
            %{} 'TestEntry (:name |roundtrips-typed-database)
              :code $ quote $ let
                  db $ app.updater/updater
                    app.updater/updater database (Op :session/connect) 1 |c1 0
                    Op :user/sign-up |demo |pw
                    , 1 |u1 0
                  nested-db $ app.updater/updater db
                    Op :router/change $ struct-with router
                      :router $ Some $ struct-with router (:name :profile)
                      :data $ Some $ {}
                        :message $ Message :id |opaque :text |payload
                    , 1 |r1 0
                assert= (Result :ok db)
                  parse-database $ format-cirru-edn db
                assert= (Result :ok nested-db)
                  parse-database $ format-cirru-edn nested-db
              :tags $ #{} :server
            %{} 'TestEntry (:name |rejects-invalid-stored-password)
              :code $ quote $ match
                parse-database "|{} (:users ({} (|u1 $ {} (:id |u1) (:name |demo) (:password 42)))) (:sessions ({}))"
                (:ok _) (raise "|Expected invalid stored password rejection")
                (:err detail)
                  assert= true $ .includes? detail |password
              :tags $ #{} :server
        'decode-server-packet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-server-packet (value)
            try
              let
                  source $ struct-input value
                  kind $ decode-map-as
                    .unwrap $ get source :kind
                    , 'Tag
                  data $ .unwrap $ get source :data
                match kind
                  :ping $ Result :ok $ ServerPacket :ping (decode-map-as data 'String)
                  :patch $ Result :ok $ ServerPacket :patch
                    decode-map-as data $ List recollect.schema/change-op
                  _ $ Result :err "|Unknown server packet kind"
              fn (detail)
                hint-fn $ Fn String $ -> (Result app.schema/ServerPacket String)
                Result :err detail
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Result ServerPacket String
        'decode-ui-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-ui-action (value)
            if (enum? value)
              match (enum-definition value)
                (:none)
                  match value
                    (:reel/reset)
                      Result :ok $ UiAction :server $ Op :reel/reset
                    (:reel/merge)
                      Result :ok $ UiAction :server $ Op :reel/merge
                    (:effect/persist)
                      Result :ok $ UiAction :server $ Op :effect/persist
                    _ $ Result :err "|Unknown UI action"
                (:some definition)
                  if (= definition UiAction)
                    match value
                      (:server op)
                        .map (decode-action-op op)
                          fn (op)
                            hint-fn $ Fn app.schema/Op $ -> app.schema/UiAction
                            UiAction :server op
                      _ $ try-decode-map-as value 'app.schema/UiAction
                    if (= definition Op)
                      .map (decode-action-op value)
                        fn (op)
                          hint-fn $ Fn app.schema/Op $ -> app.schema/UiAction
                          UiAction :server op
                      Result :err "|Unknown UI action enum"
              Result :err "|Expected an action enum"
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Result UiAction String
          :tests $ [] $ %{} 'TestEntry (:name |routes-concrete-router-actions)
            :code $ quote $ let
                router $ struct-with app.schema/router $ :name :profile
                op $ Op :router/change router
                action $ UiAction :server op
              assert= (Result :ok action) (decode-ui-action op)
              assert= (Result :ok action) (decode-ui-action action)
              assert=
                Result :ok $ UiAction :server $ Op :reel/reset
                decode-ui-action $ :: :reel/reset
            :tags $ #{} :client :server
        'op-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn op-wire (op)
            match op
              (:session/connect)
                {} (:kind :op) (:op :session/connect) (:data nil)
              (:session/disconnect)
                {} (:kind :op) (:op :session/disconnect) (:data nil)
              (:user/log-out)
                {} (:kind :op) (:op :user/log-out) (:data nil)
              (:effect/persist)
                {} (:kind :op) (:op :effect/persist) (:data nil)
              (:reel/reset)
                {} (:kind :op) (:op :reel/reset) (:data nil)
              (:reel/merge)
                {} (:kind :op) (:op :reel/merge) (:data nil)
              (:user/log-in username password)
                {} (:kind :op) (:op :user/log-in)
                  :data $ [] username password
              (:user/sign-up username password)
                {} (:kind :op) (:op :user/sign-up)
                  :data $ [] username password
              (:router/change router)
                {} (:kind :op) (:op :router/change) (:data router)
              (:session/remove-message id)
                {} (:kind :op) (:op :session/remove-message) (:data id)
          :examples $ []
          :schema $ quote $ Fn Op
            -> $ Map Tag Dynamic
        'optional-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn optional-input (input)
            match input
              (:none) None
              (:some value)
                if (nil? value) None value
          :examples $ []
          :schema $ quote $ Fn (Option Dynamic) (-> Dynamic)
        'parse-client-packet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-client-packet (text)
            try
              let
                  source $ struct-input $ parse-cirru-edn text client-wire-classes
                  kind $ decode-map-as
                    .unwrap $ get source :kind
                    , 'Tag
                  data $ get source :data
                match kind
                  :ping $ Result :ok $ ClientPacket :ping
                    decode-map-as (.unwrap data) 'String
                  :op $ let
                      tag $ decode-map-as
                        .unwrap $ get source :op
                        , 'Tag
                    match
                      match data
                        (:some payload) (decode-client-op tag payload)
                        (:none) (decode-client-op tag nil)
                      (:ok op)
                        Result :ok $ ClientPacket :op op
                      (:err detail) (Result :err detail)
                  _ $ Result :err "|Unknown client packet kind"
              fn (detail)
                hint-fn $ Fn String $ -> (Result app.schema/ClientPacket String)
                Result :err detail
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Result ClientPacket String
          :tests $ [] $ %{} 'TestEntry (:name |preserves-latency-and-account-wire)
            :code $ quote $ do
              assert=
                Result :ok $ ClientPacket :ping |p1
                parse-client-packet "|{} (:kind :ping) (:op :effect/ping) (:data |p1)"
              assert=
                Result :ok $ ClientPacket :op $ Op :user/log-in |demo |pw
                parse-client-packet "|{} (:kind :op) (:op :user/log-in) (:data ([] |demo |pw))"
              assert=
                Result :ok $ ClientPacket :op $ Op :router/change
                  struct-with router $ :name :profile
                parse-client-packet "|{} (:kind :op) (:op :router/change) (:data ({} (:name :profile)))"
              match
                parse-client-packet "|{} (:kind :op) (:op :user/log-in) (:data ([] |demo 42))"
                (:ok _) (raise "|Expected malformed credentials rejection")
                (:err detail)
                  assert= true $ .includes? detail |string
              let
                  route-value $ struct-with router
                    :router $ Some $ struct-with router (:name :profile)
                    :data $ Some $ {}
                      :message $ Message :id |opaque :text |payload
                  op $ Op :router/change route-value
                assert=
                  Result :ok $ ClientPacket :op op
                  parse-client-packet $ format-cirru-edn $ op-wire op
            :tags $ #{} :server
        'parse-database $ %{} 'CodeEntry
          :doc "|Read legacy or current stored EDN into Db. Rehydrate owned nominal payload prototypes while leaving opaque Router.data values untouched. Invalid data returns Err; callers must not silently replace existing storage."
          :code $ quote $ defn parse-database (text)
            try
              decode-database $ parse-cirru-edn text $ {} (:Option Option)
                :Message $ Message :id | :text |
              fn (detail)
                hint-fn $ Fn String $ -> (Result app.schema/Db String)
                Result :err detail
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Result Db String
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            Router :name :home :title None :data None :router None
          :examples $ []
          :schema $ quote Router
        'router-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn router-input (value)
            let
                source $ struct-input value
                nested $ optional-input $ get source :router
              assoc
                .assoc
                  .assoc source :title $ optional-input $ get source :title
                  , :data $ optional-input $ get source :data
                , :router $ if
                  or (map? nested) (struct? nested)
                  Some $ router-input nested
                  if (enum? nested)
                    if
                      match (enum-definition nested)
                        (:some found) (= found Option)
                        (:none) false
                      match nested
                        (:some child)
                          Some $ router-input child
                        (:none) nested
                        _ nested
                      , nested
                    , nested
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            Session :user-id None :id None :nickname None :router router :messages $ {}
          :examples $ []
          :schema $ quote Session
        'session-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn session-input (value)
            let
                source $ struct-input value
              .assoc
                .assoc
                  .assoc
                    .assoc
                      .assoc source :id $ optional-input $ get source :id
                      , :user-id $ optional-input $ get source :user-id
                    , :nickname $ optional-input $ get source :nickname
                  , :router $ router-input $ .unwrap-or (get source :router) router
                , :messages $ filter-map-kv
                  decode-map-as
                    .unwrap-or (get source :messages) ({})
                    Map String Dynamic
                  fn (key value)
                    hint-fn $ Fn String Dynamic $ ->
                      MapEntryDecision String $ Map Tag Dynamic
                    MapEntryDecision :keep key $ struct-input value
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
        'struct-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn struct-input (value)
            decode-map-as
              if (struct? value) (&struct:to-map value) value
              Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            User :name | :id | :nickname None :avatar None :password |
          :examples $ []
          :schema $ quote User
        'user-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn user-input (value)
            let
                source $ struct-input value
              .assoc
                .assoc source :nickname $ optional-input $ get source :nickname
                , :avatar $ optional-input $ get source :avatar
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require
            recollect.schema :refer $ change-op
            recollect.patch :refer $ try-patch-twig patch-error-message
            recollect.diff :refer $ diff-twig
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ quote $ Ref (Map Number schema/ClientStore)
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if (path-exists? storage-file)
              do (println "|Found local EDN data")
                match
                  schema/parse-database $ read-file storage-file
                  (:ok db) db
                  (:err detail)
                    raise $ str "|Invalid stored database: " detail
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ quote $ Ref schema/Db
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ quote $ Ref (ReelState schema/Db)
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ quote $ Ref (ReelState schema/Db)
          :tests $ [] $ %{} 'TestEntry (:name |initializes-concrete-reel)
            :code $ quote $ do
              assert= @*initial-db $ :base @*reel
              assert= @*initial-db $ :db @*reel
              assert= ([]) (:records @*reel)
              assert= false $ :merged? @*reel
            :tags $ #{} :server
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ generate-id!
                op-time $ get-timestamp $ get-time!
              if config/dev? $ println |Dispatch! op sid
              match op
                (:effect/persist) (persist-db!)
                _ $ reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
              , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op Number (-> Unit)
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ .unwrap $ get now :month
                str
                  .unwrap $ get now :day
                  , |-snapshot.cirru
          :examples $ []
          :schema $ quote $ Fn (-> String)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                port $ match (get-env |port)
                  (:none) (:port config/site)
                  (:some text)
                    match (parse-float text)
                      (:ok value) value
                      (:err _)
                        raise $ str "|Invalid port: " text
              identity @*reader-reel
              run-server! port
              println $ str "|Server started on port:" port
            set-interval! 200 render-loop!
            set-interval! 600000 persist-db!
            on-control-c on-exit!
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ struct-with (:db @*reel)
                  :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
              , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db replay-updater
            render-loop!
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            let
                reel @*reel
              when
                not $ identical? @*reader-reel reel
                when (sync-clients! reel) (reset! *reader-reel reel)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'replay-updater $ %{} 'CodeEntry
          :doc "|Checked adapter for Reel's heterogeneous recorded payload boundary. Business updater retains concrete Op, Number session id, String operation id and Number timestamp."
          :code $ quote $ defn replay-updater (db op sid op-id op-time)
            updater db (decode-map-as op 'app.schema/Op) (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ quote $ Fn schema/Db Dynamic Dynamic Dynamic Dynamic (-> schema/Db)
          :tests $ [] $ %{} 'TestEntry (:name |replays-concrete-operation-history)
            :code $ quote $ let
                reel $ ReelState :base schema/database :db schema/database :records ([]) :merged? false
                recorded $ reel-reducer reel updater (schema/Op :session/connect) 2 |c2 0 true
                replayed $ refresh-reel recorded schema/database replay-updater
              assert= (:db recorded) (:db replayed)
              assert= (:records recorded) (:records replayed)
            :tags $ #{} :server
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve!
              {} $ :port port
              fn (event)
                hint-fn $ Fn wss.core/WssEvent $ -> Unit
                match event
                  (:connect sid)
                    do
                      dispatch! (schema/Op :session/connect) sid
                      println "|New client."
                  (:message sid text)
                    match (schema/parse-client-packet text)
                      (:err detail) (println "|Rejected client packet:" detail)
                      (:ok packet)
                        match packet
                          (:op op) (dispatch! op sid)
                          (:ping id)
                            do
                              wss-send! sid $ format-cirru-edn $ {} (:kind :ping) (:data id)
                              , &unit
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! (schema/Op :session/disconnect) sid
                  (:blob sid _) (println "|Ignoring binary client packet:" sid)
                , &unit
          :examples $ []
          :schema $ quote $ Fn Number (-> FfiTask)
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ quote String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            let
                db $ :db reel
                reel-length $ .len $ :records reel
                complete? $ ref true
              wss-each! $ fn (sid)
                hint-fn $ Fn Number $ -> Unit
                match
                  get (:sessions db) sid
                  (:none) &unit
                  (:some session)
                    let
                        new-store $ twig-container db session reel-length
                        options $ {} $ :key :id
                        changes $ match (get @*client-caches sid)
                          (:some value) (diff-twig value new-store options)
                          (:none) (diff-twig nil new-store options)
                      when
                        not $ empty? changes
                        match
                          wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                          (:accepted)
                            swap! *client-caches
                              fn (current key value) (.assoc current key value)
                              , sid new-store
                          _ $ do (reset! complete? false) (println "|Client patch was not accepted:" sid)
                      , &unit
                , &unit
              , @complete?
          :examples $ []
          :schema $ quote $ Fn (ReelState schema/Db) (-> Bool)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel ReelState
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval!
            calcit.std.date :refer $ get-time! get-timestamp extract-time
            calcit.std.path :refer $ join-path
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session reel-length)
            let
                logged-in? $ .some? $ :user-id session
              schema/ClientStore :logged-in? logged-in? :session session :user
                match (:user-id session)
                  (:none) None
                  (:some id)
                    .map
                      get (:users db) id
                      , twig-user
                , :router
                  struct-with (:router session)
                    :data $ if logged-in?
                      match
                        :name $ :router session
                        :home None
                        :profile $ Some $ twig-members (:sessions db) (:users db)
                        _ $ Some $ {}
                      , None
                  , :count
                    .len $ :sessions db
                    , :color (rand-hex-color!) :reel-length reel-length
          :examples $ []
          :schema $ quote $ Fn schema/Db schema/Session Number (-> schema/ClientStore)
          :tests $ [] $ %{} 'TestEntry (:name |publishes-account-without-password)
            :code $ quote $ let
                db $ app.updater/updater
                  app.updater/updater schema/database (schema/Op :session/connect) 1 |c1 0
                  schema/Op :user/sign-up |demo |pw
                  , 1 |u1 0
                session $ .unwrap $ get (:sessions db) 1
                store $ twig-container db session 7
                user $ .unwrap $ :user store
              assert= true $ :logged-in? store
              assert= |demo $ :name user
              assert= false $ contains? (.to-map user) :password
              assert=
                {} $ 1 $ Some |demo
                twig-members (:sessions db) (:users db)
              assert= None $ :data $ :router store
              assert= 7 $ :reel-length store
            :tags $ #{} :server
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (sid session)
              hint-fn $ Fn Number app.schema/Session $ ->
                MapEntryDecision Number $ Option String
              MapEntryDecision :keep sid $ match (:user-id session)
                (:none) None
                (:some id)
                  .map (get users id)
                    fn (user)
                      hint-fn $ Fn app.schema/User $ -> String
                      :name user
          :examples $ []
          :schema $ quote $ Fn (Map Number schema/Session) (Map String schema/User)
            -> $ Map Number $ Option String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
            app.schema :as schema
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            schema/ClientUser :name (:name user) :id (:id user) :nickname (:nickname user) :avatar $ :avatar user
          :examples $ []
          :schema $ quote $ Fn schema/User (-> schema/ClientUser)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user
          :require $ app.schema :as schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db &unit sid op-id op-time)
              (:session/disconnect) (session/disconnect db &unit sid op-id op-time)
              (:session/remove-message id) (session/remove-message db id sid op-id op-time)
              (:user/log-in name password)
                user/log-in db ([] name password) sid op-id op-time
              (:user/sign-up name password)
                user/sign-up db ([] name password) sid op-id op-time
              (:user/log-out) (user/log-out db &unit sid op-id op-time)
              (:router/change route) (router/change db route sid op-id op-time)
              _ db
          :examples $ []
          :schema $ quote $ Fn schema/Db schema/Op Number String Number (-> schema/Db)
          :tests $ [] $ %{} 'TestEntry (:name |typed-account-session-lifecycle)
            :code $ quote $ let
                connected $ updater app.schema/database (app.schema/Op :session/connect) 1 |c1 10
                signed-up $ updater connected (app.schema/Op :user/sign-up |demo |pw) 1 |u1 10
                signed-out $ updater signed-up (app.schema/Op :user/log-out) 1 |o1 10
                wrong-password $ updater signed-out (app.schema/Op :user/log-in |demo |bad) 1 |w1 10
                missing-user $ updater signed-out (app.schema/Op :user/log-in |missing |pw) 1 |m1 10
                signed-in $ updater signed-out (app.schema/Op :user/log-in |demo |pw) 1 |i1 10
                duplicate $ updater signed-up (app.schema/Op :user/sign-up |demo |other) 1 |d1 10
                routed $ updater signed-in
                  app.schema/Op :router/change $ struct-with app.schema/router $ :name :profile
                  , 1 |r1 10
                message-removed $ updater wrong-password (app.schema/Op :session/remove-message |w1) 1 |r2 10
                disconnected $ updater routed (app.schema/Op :session/disconnect) 1 |x1 10
              assert= (Some 1)
                :id $ .unwrap $ get (:sessions connected) 1
              assert= (Some |u1)
                :user-id $ .unwrap $ get (:sessions signed-up) 1
              assert= |demo $ :name $ .unwrap
                get (:users signed-up) |u1
              assert= (calcit.std.hash/md5 |pw)
                :password $ .unwrap $ get (:users signed-up) |u1
              assert= None $ :avatar $ .unwrap
                get (:users signed-up) |u1
              assert= None $ :user-id $ .unwrap
                get (:sessions signed-out) 1
              assert= None $ :user-id $ .unwrap
                get (:sessions wrong-password) 1
              assert= "|Wrong password for demo" $ :text $ .unwrap
                get
                  :messages $ .unwrap $ get (:sessions wrong-password) 1
                  , |w1
              assert= "|No user named: missing" $ :text $ .unwrap
                get
                  :messages $ .unwrap $ get (:sessions missing-user) 1
                  , |m1
              assert= (Some |u1)
                :user-id $ .unwrap $ get (:sessions signed-in) 1
              assert= 1 $ .len $ :users duplicate
              assert= "|Name is taken: demo" $ :text $ .unwrap
                get
                  :messages $ .unwrap $ get (:sessions duplicate) 1
                  , |d1
              assert= :profile $ :name $ :router
                .unwrap $ get (:sessions routed) 1
              assert= 0 $ .len $ :messages
                .unwrap $ get (:sessions message-removed) 1
              assert= 0 $ .len $ :sessions disconnected
              assert= 1 $ .len $ :users disconnected
            :tags $ #{} :server
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema)
            respo-message.updater :refer $ update-messages
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                struct-with db $ :sessions $ .assoc (:sessions db) sid
                  struct-with session $ :router op-data
          :examples $ []
          :schema $ quote $ Fn app.schema/Db app.schema/Router Number String Number (-> app.schema/Db)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db op-data sid op-id op-time)
            struct-with db $ :sessions $ .assoc (:sessions db) sid
              struct-with schema/session $ :id $ Some sid
          :examples $ []
          :schema $ quote $ Fn schema/Db Unit Number String Number (-> schema/Db)
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db op-data sid op-id op-time)
            struct-with db $ :sessions $ .dissoc (:sessions db) sid
          :examples $ []
          :schema $ quote $ Fn schema/Db Unit Number String Number (-> schema/Db)
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                struct-with db $ :sessions $ .assoc (:sessions db) sid
                  struct-with session $ :messages $ .dissoc (:messages session) op-data
          :examples $ []
          :schema $ quote $ Fn schema/Db String Number String Number (-> schema/Db)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                let
                    username $ .unwrap $ nth op-data 0
                    password $ .unwrap $ nth op-data 1
                  match
                    find
                      .to-list $ .distinct-values $ :users db
                      fn (user)
                        hint-fn $ Fn app.schema/User $ -> Bool
                        = username $ :name user
                    (:none)
                      struct-with db $ :sessions $ .assoc (:sessions db) sid
                        struct-with session $ :messages $ .assoc (:messages session) op-id
                          app.schema/Message :id op-id :text $ str "|No user named: " username
                    (:some user)
                      if
                        = (md5 password) (:password user)
                        struct-with db $ :sessions $ .assoc (:sessions db) sid
                          struct-with session $ :user-id $ Some (:id user)
                        struct-with db $ :sessions $ .assoc (:sessions db) sid
                          struct-with session $ :messages $ .assoc (:messages session) op-id
                            app.schema/Message :id op-id :text $ str "|Wrong password for " username
          :examples $ []
          :schema $ quote $ Fn app.schema/Db (List String) Number String Number (-> app.schema/Db)
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                struct-with db $ :sessions $ .assoc (:sessions db) sid
                  struct-with session $ :user-id None
          :examples $ []
          :schema $ quote $ Fn app.schema/Db Unit Number String Number (-> app.schema/Db)
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                let
                    username $ .unwrap $ nth op-data 0
                    password $ .unwrap $ nth op-data 1
                  if
                    .some? $ find
                      .to-list $ .distinct-values $ :users db
                      fn (user)
                        hint-fn $ Fn app.schema/User $ -> Bool
                        = username $ :name user
                    struct-with db $ :sessions $ .assoc (:sessions db) sid
                      struct-with session $ :messages $ .assoc (:messages session) op-id
                        app.schema/Message :id op-id :text $ str "|Name is taken: " username
                    struct-with
                      struct-with db $ :sessions $ .assoc (:sessions db) sid
                        struct-with session $ :user-id $ Some op-id
                      :users $ .assoc (:users db) op-id $ app.schema/User :id op-id :name username :nickname (Some username) :password (md5 password) :avatar None
          :examples $ []
          :schema $ quote $ Fn app.schema/Db (List String) Number String Number (-> app.schema/Db)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require $ calcit.std.hash :refer $ md5

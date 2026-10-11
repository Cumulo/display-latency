
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |js-ffi/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*ping-timer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *ping-timer (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'Number
        '*records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *records ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'String 'app.schema/LatencyRecord
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.schema/ClientStore
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
                    hint-fn $ {}
                      :args $ [] 'Dynamic
                      :return 'Unit
                    simulate-login!
                    on-open
                    , &unit
                  :on-close $ fn (event)
                    hint-fn $ {}
                      :args $ [] 'Dynamic
                      :return 'Unit
                    stop-test-loop!
                    reset! *store $ Option :none
                    println "|Lost connection!"
                  :on-data on-server-data
                  :class-mapper schema/client-wire-classes
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (value)
            match (schema/decode-ui-action value)
              (:err detail) (println "|Rejected UI action:" detail)
              (:ok action)
                match action
                  (:states cursor state)
                    reset! *states $ decode-map-as (update-states @*states cursor state) (:: 'Map 'Tag 'Dynamic)
                  (:server op) (send-op! op)
                  (:connect) (connect! start-test-loop!)
                  (:clear)
                    reset! *records $ {}
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app! render!
            connect! $ fn () $ start-test-loop!
            add-watch! *store :changes $ fn (current previous)
              hint-fn $ {}
                :args $ [] (:: 'Option 'app.schema/ClientStore) (:: 'Option 'app.schema/ClientStore)
                :return 'Unit
              render-app! render!
            add-watch! *states :changes $ fn (current previous)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
                :return 'Unit
              render-app! render!
            add-watch! *records :changes $ fn (current previous)
              hint-fn $ {}
                :args $ [] (:: 'Map 'String 'app.schema/LatencyRecord) (:: 'Map 'String 'app.schema/LatencyRecord)
                :return 'Unit
              render-app! render!
            on-page-touch $ fn ()
              hint-fn $ {}
                :args $ []
                :return 'Unit
              when (.none? @*store) (connect! start-test-loop!)
              , &unit
            println "|App started!"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            let
                document $ js-cast js/document 'respo.dom/DomDocument
                target $ document .query-selector |.app
              if (js-nullish? target) (raise "|Missing .app mount target") target
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            match (schema/decode-server-packet data)
              (:err detail) (println "|Rejected server packet:" detail)
              (:ok packet)
                match packet
                  (:patch changes)
                    match (schema/apply-store-patch @*store changes)
                      (:ok store)
                        reset! *store $ Option :some store
                      (:err detail) (println "|Rejected store patch:" detail)
                  (:ping id)
                    swap! *records $ fn (records)
                      hint-fn $ {}
                        :args $ [] $ :: 'Map 'String 'app.schema/LatencyRecord
                        :return $ :: 'Map 'String 'app.schema/LatencyRecord
                      match (get records id)
                        (:none) records
                        (:some record)
                          assoc records id $ struct-with record $ :finish-time
                            Option :some $ checked-now-ms
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!) (render-app! render!) (println "|Code updated.") &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (renderer)
            renderer (mount-target)
              comp-container
                decode-map-as
                  .unwrap $ get @*states :states
                  :: 'Map 'Tag 'Dynamic
                , @*records @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] (:: 'JsNullish 'respo.dom/DomElement) 'respo.schema/Component $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ [] 'Dynamic
        'send-op! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn send-op! (op)
            ws-send! $ schema/op-wire op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'start-test-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn start-test-loop! () (stop-test-loop!)
            reset! *ping-timer $ Option :some $ browser/set-interval!
              fn ()
                hint-fn $ {}
                  :args $ []
                  :return 'Unit
                when
                  and
                    = (browser/visibility-state) (browser/VisibilityState :visible)
                    ws-connected?
                  let
                      id $ generate-id!
                      record $ schema/LatencyRecord :id id :start-time (checked-now-ms) :finish-time $ Option :none
                    swap! *records assoc id record
                    ws-send! $ {} (:kind :ping) (:op :effect/ping) (:data id)
                , &unit
              , 2000
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'stop-test-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stop-test-loop! ()
            match @*ping-timer
              (:some handle) (browser/clear-interval! handle)
              (:none) &unit
            reset! *ping-timer $ Option :none
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] respo.cursor :refer $ [] update-states
            [] app.comp.container :refer $ [] comp-container
            [] cljs.reader :refer $ [] read-string
            [] app.schema :as schema
            [] app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send! ws-connected? checked-now-ms
            [] recollect.patch :refer $ [] patch-twig
            cumulo-util.core :refer $ on-page-touch
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states records maybe-store)
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
                          (:none)
                            comp-login $ decode-map-as (>> states :login) (:: 'Map 'Tag 'Dynamic)
                          (:some user)
                            comp-profile user $ decode-map-as
                              .unwrap $ :data router
                              :: 'Map 'Number $ :: 'Option 'String
                        <> $ str router
                      comp-login $ decode-map-as (>> states :login) (:: 'Map 'Tag 'Dynamic)
                    comp-status-color $ :color store
                    when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      filter-map-kv
                        :messages $ :session store
                        fn (id message)
                          hint-fn $ {}
                            :args $ [] 'String 'app.schema/Message
                            :return $ :: 'MapEntryDecision 'String $ :: 'Map 'Tag 'String
                          MapEntryDecision :keep id $ {}
                            :id $ :id message
                            :text $ :text message
                      {}
                      fn (info d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ schema/Op :session/remove-message $ decode-map-as
                          .unwrap $ get info :id
                          , 'String
                    when dev? $ comp-reel (:reel-length store) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'String 'app.schema/LatencyRecord) (:: 'Option 'app.schema/ClientStore)
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (records)
            div
              {} $ :style $ merge ui/expand ui/row
              list->
                {} $ :style $ merge ui/expand
                  {} (:padding 16) (:max-width 320)
                -> records (.distinct-values) (.to-list)
                  .sort-by $ fn (record)
                    hint-fn $ {}
                      :args $ [] 'app.schema/LatencyRecord
                      :return 'Number
                    negate $ :start-time record
                  .map $ fn (record)
                    hint-fn $ {}
                      :args $ [] 'app.schema/LatencyRecord
                      :return $ :: 'List 'Dynamic
                    [] (:id record)
                      div ({})
                        <>
                          str $ :start-time record
                          {} $ :font-family ui/font-code
                        =< 16 nil
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
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ schema/UiAction :clear
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'String 'app.schema/LatencyRecord
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
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ schema/UiAction :connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> >> div list-> span button pre
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo.comp.space :refer $ [] =<
            [] app.comp.navigation :refer $ [] comp-navigation
            [] app.comp.profile :refer $ [] comp-profile
            [] app.comp.login :refer $ [] comp-login
            [] respo-message.comp.messages :refer $ [] comp-messages
            [] cumulo-reel.comp.reel :refer $ [] comp-reel
            [] app.config :refer $ [] dev?
            [] app.schema :as schema
            [] app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ match (get states :data)
                  (:none) initial-state
                  (:some value)
                    decode-map-as (schema/struct-input value) 'app.schema/LoginState
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
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ schema/UiAction :states cursor $ struct-with state
                            :username $ decode-map-as
                              .unwrap $ get e :value
                              , 'String
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ schema/UiAction :states cursor $ struct-with state
                            :password $ decode-map-as
                              .unwrap $ get e :value
                              , 'String
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (schema/LoginState :username | :password |)
          :examples $ []
          :schema $ :: 'app.schema/LoginState
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Unit
                :return 'Unit
              dispatch! $ if signup? (schema/Op :user/sign-up username password) (schema/Op :user/log-in username password)
              browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.config :as config
            js-ffi.browser :as browser
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0 (Option :some 0.1)
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ schema/Op :router/change $ struct-with schema/router (:name :home)
                  :style $ {} $ :cursor :pointer
                <> (:title config/site) nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ schema/Op :router/change $ struct-with schema/router (:name :profile)
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ str count-members
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> span div
            [] app.config :as config
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
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  .to-list $ filter-map-kv members $ fn (id username)
                    hint-fn $ {}
                      :args $ [] 'Number $ :: 'Option 'String
                      :return $ :: 'MapEntryDecision 'Number 'respo.schema/Element
                    MapEntryDecision :keep id $ div
                      {} $ :style $ {} (:padding "|0 8px")
                        :border $ str "|1px solid " $ hsl 0 0 80
                        :border-radius |16px
                        :margin "|0 4px"
                      <> $ .unwrap-or username |Guest
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      browser/location-replace! $ str
                        :origin $ browser/location-snapshot
                        , |?time= $ shared/now-ms
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      dispatch! $ schema/Op :user/log-out
                      browser/storage-remove! $ :storage-key config/site
                      , &unit
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/ClientUser $ :: 'Map 'Number (:: 'Option 'String)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:port 'Number) (:title 'String) (:icon 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            Site :port 11021 :title "|Display Latency" :icon |http://cdn.tiye.me/logo/cumulo.png :theme |#eeeeff :storage-key |display-latency :storage-file |storage.cirru
          :examples $ []
          :schema $ :: 'app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ClientPacket $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ClientPacket (:ping 'String) (:op 'app.schema/Op)
          :examples $ []
          :schema $ :: 'EnumDef
        'ClientStore $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientStore (:logged-in? 'Bool) (:session 'app.schema/Session)
            :user $ :: 'Option 'app.schema/ClientUser
            :router 'app.schema/Router
            :count 'Number
            :color 'String
            :reel-length 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'ClientUser $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientUser (:name 'String) (:id 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'StructDef
        'Db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Db
            :sessions $ :: 'Map 'Number 'app.schema/Session
            :users $ :: 'Map 'String 'app.schema/User
          :examples $ []
          :schema $ :: 'StructDef
        'LatencyRecord $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LatencyRecord (:start-time 'Number)
            :finish-time $ :: 'Option 'Number
            :id 'String
          :examples $ []
          :schema $ :: 'StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:id 'String) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:session/connect) (:session/disconnect) (:session/remove-message 'String) (:user/log-in 'String 'String) (:user/sign-up 'String 'String) (:user/log-out) (:router/change 'app.schema/Router) (:effect/persist) (:reel/reset) (:reel/merge)
          :examples $ []
          :schema $ :: 'EnumDef
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name 'Tag)
            :title $ :: 'Option 'String
            :data $ :: 'Option $ :: 'Map 'Dynamic 'Dynamic
            :router $ :: 'Option 'app.schema/Router
          :examples $ []
          :schema $ :: 'StructDef
        'ServerPacket $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ServerPacket (:ping 'String)
            :patch $ :: 'List 'recollect.schema/change-op
          :examples $ []
          :schema $ :: 'EnumDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session
            :user-id $ :: 'Option 'String
            :id $ :: 'Option 'Number
            :nickname $ :: 'Option 'String
            :router 'app.schema/Router
            :messages $ :: 'Map 'String 'app.schema/Message
          :examples $ []
          :schema $ :: 'StructDef
        'UiAction $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum UiAction
            :states (:: 'List 'Dynamic) 'Dynamic
            :server 'app.schema/Op
            :connect
            :clear
          :examples $ []
          :schema $ :: 'EnumDef
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:name 'String) (:id 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
            :password 'String
          :examples $ []
          :schema $ :: 'StructDef
        'apply-store-patch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn apply-store-patch (store changes)
            match
              try-patch-twig (.unwrap-or store nil) changes
              (:err detail)
                Result :err $ patch-error-message detail
              (:ok value) (decode-client-store value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Option 'app.schema/ClientStore) (:: 'List 'recollect.schema/change-op)
            :return $ :: 'Result 'app.schema/ClientStore 'String
          :tests $ [] $ %{} 'TestEntry (:name |roundtrips-initial-and-profile-wire-patches)
            :code $ quote $ let
                receive $ fn (store text)
                  hint-fn $ {}
                    :args $ [] (:: 'Option 'app.schema/ClientStore) 'String
                    :return $ :: 'Result 'app.schema/ClientStore 'String
                  match
                    decode-server-packet $ parse-cirru-edn text client-wire-classes
                    (:err detail) (Result :err detail)
                    (:ok packet)
                      match packet
                        (:patch changes) (apply-store-patch store changes)
                        (:ping _) (Result :err "|Expected a patch packet")
                base $ ClientStore :logged-in? true :session
                  struct-with session
                    :id $ Option :some 1
                    :user-id $ Option :some |u1
                    :messages $ {} $ |m1 (Message :id |m1 :text |hello)
                  , :user
                    Option :some $ ClientUser :name |demo :id |u1 :nickname (Option :some |nick) :avatar $ Option :none
                    , :router router :count 1 :color |red :reel-length 0
                next $ struct-with base
                  :router $ struct-with router (:name :profile)
                    :router $ Option :some $ struct-with router (:name :home)
                    :data $ Option :some $ {}
                      1 $ Option :some |demo
                      :message $ Message :id |opaque :text |payload
                  :reel-length 1
                initial $ receive (Option :none)
                  format-cirru-edn $ {} (:kind :patch)
                    :data $ diff-twig nil base $ {} (:key :id)
                updated $ match initial
                  (:err detail) (raise detail)
                  (:ok store)
                    receive (Option :some store)
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
              :ClientUser $ ClientUser :name | :id | :nickname (Option :none) :avatar $ Option :none
              :ClientStore $ ClientStore :logged-in? false :session session :user (Option :none) :router router :count 0 :color | :reel-length 0
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            Db :sessions ({}) :users $ {}
          :examples $ []
          :schema $ :: 'app.schema/Db
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
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result 'app.schema/Op 'String
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
                    credentials $ decode-map-as data $ :: 'List 'String
                  if
                    = 2 $ count credentials
                    Op :user/log-in
                      .unwrap $ nth credentials 0
                      .unwrap $ nth credentials 1
                    raise "|Expected two credential strings"
                :user/sign-up $ let
                    credentials $ decode-map-as data $ :: 'List 'String
                  if
                    = 2 $ count credentials
                    Op :user/sign-up
                      .unwrap $ nth credentials 0
                      .unwrap $ nth credentials 1
                    raise "|Expected two credential strings"
                :session/remove-message $ Op :session/remove-message $ decode-map-as data 'String
                :router/change $ Op :router/change $ decode-map-as (router-input data) 'app.schema/Router
                _ $ raise $ str "|Unknown client operation: " tag
              fn (detail)
                hint-fn $ {}
                  :args $ [] 'String
                  :return $ :: 'Result 'app.schema/Op 'String
                Result :err detail
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Tag 'Dynamic
            :return $ :: 'Result 'app.schema/Op 'String
        'decode-client-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-client-store (value)
            try
              let
                  source $ struct-input value
                  user $ .map
                    decode-map-as
                      optional-input $ get source :user
                      :: 'Option 'Dynamic
                    , user-input
                try-decode-map-as
                  merge source $ {}
                    :session $ session-input $ .unwrap (get source :session)
                    :router $ router-input $ .unwrap (get source :router)
                    :user user
                  , 'app.schema/ClientStore
              fn (detail)
                hint-fn $ {}
                  :args $ [] 'String
                  :return $ :: 'Result 'app.schema/ClientStore 'String
                Result :err detail
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result 'app.schema/ClientStore 'String
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (value)
            try
              let
                  source $ struct-input value
                try-decode-map-as
                  assoc
                    assoc source :sessions $ filter-map-kv
                      decode-map-as
                        .unwrap-or (get source :sessions) ({})
                        :: 'Map 'Number 'Dynamic
                      fn (key value)
                        hint-fn $ {}
                          :args $ [] 'Number 'Dynamic
                          :return $ :: 'MapEntryDecision 'Number $ :: 'Map 'Tag 'Dynamic
                        MapEntryDecision :keep key $ session-input value
                    , :users $ filter-map-kv
                      decode-map-as
                        .unwrap-or (get source :users) ({})
                        :: 'Map 'String 'Dynamic
                      fn (key value)
                        hint-fn $ {}
                          :args $ [] 'String 'Dynamic
                          :return $ :: 'MapEntryDecision 'String $ :: 'Map 'Tag 'Dynamic
                        MapEntryDecision :keep key $ user-input value
                  , 'app.schema/Db
              fn (detail)
                hint-fn $ {}
                  :args $ [] 'String
                  :return $ :: 'Result 'app.schema/Db 'String
                Result :err detail
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result 'app.schema/Db 'String
          :tests $ []
            %{} 'TestEntry (:name |decodes-legacy-bare-maps)
              :code $ quote $ match
                parse-database "|{} (:users ({} (|u1 $ {} (:id |u1) (:name |demo) (:nickname |nick) (:avatar nil) (:password |hash)))) (:sessions ({} (1 $ {} (:id 1) (:user-id |u1) (:nickname nil) (:router ({} (:name :profile) (:data nil) (:router nil))) (:messages ({} (|m1 $ {} (:id |m1) (:text |hello)))))))"
                (:err detail) (raise detail)
                (:ok db)
                  let
                      session $ .unwrap $ get (:sessions db) 1
                      user $ .unwrap $ get (:users db) |u1
                    assert= (Option :some |u1) (:user-id session)
                    assert= (Option :some 1) (:id session)
                    assert= (Option :none) (:nickname session)
                    assert= :profile $ :name $ :router session
                    assert= (Option :none)
                      :data $ :router session
                    assert= (Option :some |nick) (:nickname user)
                    assert= (Option :none) (:avatar user)
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
                      :router $ Option :some $ struct-with router (:name :profile)
                      :data $ Option :some $ {}
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
                    decode-map-as data $ :: 'List 'recollect.schema/change-op
                  _ $ Result :err "|Unknown server packet kind"
              fn (detail)
                hint-fn $ {}
                  :args $ [] 'String
                  :return $ :: 'Result 'app.schema/ServerPacket 'String
                Result :err detail
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result 'app.schema/ServerPacket 'String
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
                            hint-fn $ {}
                              :args $ [] 'app.schema/Op
                              :return 'app.schema/UiAction
                            UiAction :server op
                      _ $ try-decode-map-as value 'app.schema/UiAction
                    if (= definition Op)
                      .map (decode-action-op value)
                        fn (op)
                          hint-fn $ {}
                            :args $ [] 'app.schema/Op
                            :return 'app.schema/UiAction
                          UiAction :server op
                      Result :err "|Unknown UI action enum"
              Result :err "|Expected an action enum"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result 'app.schema/UiAction 'String
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
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Op
            :return $ :: 'Map 'Tag 'Dynamic
        'optional-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn optional-input (input)
            match input
              (:none) (Option :none)
              (:some value)
                if (nil? value) (Option :none) value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'Option 'Dynamic
        'parse-client-packet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-client-packet (text)
            try
              let
                  source $ struct-input $ parse-cirru-edn text client-wire-classes
                  kind $ decode-map-as
                    .unwrap $ get source :kind
                    , 'Tag
                  data $ .unwrap-or (get source :data) nil
                match kind
                  :ping $ Result :ok $ ClientPacket :ping (decode-map-as data 'String)
                  :op $ match
                    decode-client-op
                      decode-map-as
                        .unwrap $ get source :op
                        , 'Tag
                      , data
                    (:ok op)
                      Result :ok $ ClientPacket :op op
                    (:err detail) (Result :err detail)
                  _ $ Result :err "|Unknown client packet kind"
              fn (detail)
                hint-fn $ {}
                  :args $ [] 'String
                  :return $ :: 'Result 'app.schema/ClientPacket 'String
                Result :err detail
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :return $ :: 'Result 'app.schema/ClientPacket 'String
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
                    :router $ Option :some $ struct-with router (:name :profile)
                    :data $ Option :some $ {}
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
                hint-fn $ {}
                  :args $ [] 'String
                  :return $ :: 'Result 'app.schema/Db 'String
                Result :err detail
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :return $ :: 'Result 'app.schema/Db 'String
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            Router :name :home :title (Option :none) :data (Option :none) :router $ Option :none
          :examples $ []
          :schema $ :: 'app.schema/Router
        'router-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn router-input (value)
            let
                source $ struct-input value
                nested $ optional-input $ get source :router
              assoc
                assoc
                  assoc source :title $ optional-input $ get source :title
                  , :data $ optional-input $ get source :data
                , :router $ if
                  or (map? nested) (struct? nested)
                  Option :some $ router-input nested
                  if (enum? nested)
                    if
                      match (enum-definition nested)
                        (:some found) (= found Option)
                        (:none) false
                      match nested
                        (:some child)
                          Option :some $ router-input child
                        (:none) nested
                        _ nested
                      , nested
                    , nested
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            Session :user-id (Option :none) :id (Option :none) :nickname (Option :none) :router router :messages $ {}
          :examples $ []
          :schema $ :: 'app.schema/Session
        'session-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn session-input (value)
            let
                source $ struct-input value
              assoc
                assoc
                  assoc
                    assoc
                      assoc source :id $ optional-input $ get source :id
                      , :user-id $ optional-input $ get source :user-id
                    , :nickname $ optional-input $ get source :nickname
                  , :router $ router-input $ .unwrap-or (get source :router) router
                , :messages $ filter-map-kv
                  decode-map-as
                    .unwrap-or (get source :messages) ({})
                    :: 'Map 'String 'Dynamic
                  fn (key value)
                    hint-fn $ {}
                      :args $ [] 'String 'Dynamic
                      :return $ :: 'MapEntryDecision 'String $ :: 'Map 'Tag 'Dynamic
                    MapEntryDecision :keep key $ struct-input value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'struct-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn struct-input (value)
            decode-map-as
              if (struct? value) (&struct:to-map value) value
              :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            User :name | :id | :nickname (Option :none) :avatar (Option :none) :password |
          :examples $ []
          :schema $ :: 'app.schema/User
        'user-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn user-input (value)
            let
                source $ struct-input value
              assoc
                assoc source :nickname $ optional-input $ get source :nickname
                , :avatar $ optional-input $ get source :avatar
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require
            recollect.schema :refer $ change-op
            recollect.patch :refer $ try-patch-twig patch-error-message
            recollect.diff :refer $ diff-twig
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'app.schema/ClientStore
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if (path-exists? storage-file)
              do (println "|Found local EDN data")
                match
                  schema/parse-database $ read-file storage-file
                  (:ok db) db
                  (:err detail)
                    raise $ str "|Invalid stored database: " detail
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Db
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op 'Number
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
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db replay-updater
            render-loop!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            let
                reel @*reel
              when
                not $ identical? @*reader-reel reel
                when (sync-clients! reel) (reset! *reader-reel reel)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'replay-updater $ %{} 'CodeEntry
          :doc "|Checked adapter for Reel's heterogeneous recorded payload boundary. Business updater retains concrete Op, Number session id, String operation id and Number timestamp."
          :code $ quote $ defn replay-updater (db op sid op-id op-time)
            updater db (decode-map-as op 'app.schema/Op) (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Dynamic 'Dynamic 'Dynamic 'Dynamic
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
                hint-fn $ {}
                  :args $ [] 'wss.core/WssEvent
                  :return 'Unit
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
          :schema $ :: 'Fn $ {} (:return 'calcit.core/FfiTask)
            :args $ [] 'Number
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            let
                db $ :db reel
                complete? $ ref true
              wss-each! $ fn (sid)
                hint-fn $ {}
                  :args $ [] 'Number
                  :return 'Unit
                match
                  get (:sessions db) sid
                  (:none) &unit
                  (:some session)
                    let
                        old-store $ .unwrap-or (get @*client-caches sid) nil
                        new-store $ twig-container db session $ :records reel
                        changes $ diff-twig old-store new-store $ {} (:key :id)
                      when
                        not $ empty? changes
                        match
                          wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                          (:accepted) (swap! *client-caches assoc sid new-store)
                          _ $ do (reset! complete? false) (println "|Client patch was not accepted:" sid)
                      , &unit
                , &unit
              , @complete?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
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
          :code $ quote $ defn twig-container (db session records)
            let
                logged-in? $ .some? $ :user-id session
              schema/ClientStore :logged-in? logged-in? :session session :user
                match (:user-id session)
                  (:none) (Option :none)
                  (:some id)
                    .map
                      get (:users db) id
                      , twig-user
                , :router
                  struct-with (:router session)
                    :data $ if logged-in?
                      match
                        :name $ :router session
                        :home $ Option :none
                        :profile $ Option :some $ twig-members (:sessions db) (:users db)
                        _ $ Option :some $ {}
                      Option :none
                  , :count
                    count $ :sessions db
                    , :color (rand-hex-color!) :reel-length $ count records
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ClientStore)
            :args $ [] 'app.schema/Db 'app.schema/Session $ :: 'List (:: 'List 'Dynamic)
          :tests $ [] $ %{} 'TestEntry (:name |publishes-account-without-password)
            :code $ quote $ let
                db $ app.updater/updater
                  app.updater/updater schema/database (schema/Op :session/connect) 1 |c1 0
                  schema/Op :user/sign-up |demo |pw
                  , 1 |u1 0
                session $ .unwrap $ get (:sessions db) 1
                store $ twig-container db session $ []
                user $ .unwrap $ :user store
              assert= true $ :logged-in? store
              assert= |demo $ :name user
              assert= false $ contains? (.to-map user) :password
              assert=
                {} $ 1 $ Option :some |demo
                twig-members (:sessions db) (:users db)
              assert= (Option :none)
                :data $ :router store
            :tags $ #{} :server
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (sid session)
              hint-fn $ {}
                :args $ [] 'Number 'app.schema/Session
                :return $ :: 'MapEntryDecision 'Number $ :: 'Option 'String
              MapEntryDecision :keep sid $ match (:user-id session)
                (:none) (Option :none)
                (:some id)
                  .map (get users id)
                    fn (user)
                      hint-fn $ {}
                        :args $ [] 'app.schema/User
                        :return 'String
                      :name user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Number 'app.schema/Session) (:: 'Map 'String 'app.schema/User)
            :return $ :: 'Map 'Number $ :: 'Option 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
            app.schema :as schema
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            schema/ClientUser :name (:name user) :id (:id user) :nickname (:nickname user) :avatar $ :avatar user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ClientUser)
            :args $ [] 'app.schema/User
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
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/Op 'Number 'String 'Number
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
              assert= (Option :some 1)
                :id $ .unwrap $ get (:sessions connected) 1
              assert= (Option :some |u1)
                :user-id $ .unwrap $ get (:sessions signed-up) 1
              assert= |demo $ :name $ .unwrap
                get (:users signed-up) |u1
              assert= (calcit.std.hash/md5 |pw)
                :password $ .unwrap $ get (:users signed-up) |u1
              assert= (Option :none)
                :avatar $ .unwrap $ get (:users signed-up) |u1
              assert= (Option :none)
                :user-id $ .unwrap $ get (:sessions signed-out) 1
              assert= (Option :none)
                :user-id $ .unwrap $ get (:sessions wrong-password) 1
              assert= "|Wrong password for demo" $ :text $ .unwrap
                get
                  :messages $ .unwrap $ get (:sessions wrong-password) 1
                  , |w1
              assert= "|No user named: missing" $ :text $ .unwrap
                get
                  :messages $ .unwrap $ get (:sessions missing-user) 1
                  , |m1
              assert= (Option :some |u1)
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
          :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                struct-with db $ :sessions $ assoc (:sessions db) sid
                  struct-with session $ :router op-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/Router 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db op-data sid op-id op-time)
            struct-with db $ :sessions $ assoc (:sessions db) sid
              struct-with schema/session $ :id $ Option :some sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Unit 'Number 'String 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db op-data sid op-id op-time)
            struct-with db $ :sessions $ dissoc (:sessions db) sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Unit 'Number 'String 'Number
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                struct-with db $ :sessions $ assoc (:sessions db) sid
                  struct-with session $ :messages $ dissoc (:messages session) op-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ [] app.schema :as schema
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
                        hint-fn $ {}
                          :args $ [] 'app.schema/User
                          :return 'Bool
                        = username $ :name user
                    (:none)
                      struct-with db $ :sessions $ assoc (:sessions db) sid
                        struct-with session $ :messages $ assoc (:messages session) op-id
                          app.schema/Message :id op-id :text $ str "|No user named: " username
                    (:some user)
                      if
                        = (md5 password) (:password user)
                        struct-with db $ :sessions $ assoc (:sessions db) sid
                          struct-with session $ :user-id $ Option :some (:id user)
                        struct-with db $ :sessions $ assoc (:sessions db) sid
                          struct-with session $ :messages $ assoc (:messages session) op-id
                            app.schema/Message :id op-id :text $ str "|Wrong password for " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db (:: 'List 'String) 'Number 'String 'Number
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            match
              get (:sessions db) sid
              (:none) db
              (:some session)
                struct-with db $ :sessions $ assoc (:sessions db) sid
                  struct-with session $ :user-id $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Unit 'Number 'String 'Number
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
                        hint-fn $ {}
                          :args $ [] 'app.schema/User
                          :return 'Bool
                        = username $ :name user
                    struct-with db $ :sessions $ assoc (:sessions db) sid
                      struct-with session $ :messages $ assoc (:messages session) op-id
                        app.schema/Message :id op-id :text $ str "|Name is taken: " username
                    struct-with
                      struct-with db $ :sessions $ assoc (:sessions db) sid
                        struct-with session $ :user-id $ Option :some op-id
                      :users $ assoc (:users db) op-id $ app.schema/User :id op-id :name username :nickname (Option :some username) :password (md5 password) :avatar (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db (:: 'List 'String) 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require $ calcit.std.hash :refer $ md5

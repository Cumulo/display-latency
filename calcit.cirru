
{}
  :configs $ {} (:init-fn |app.client/main!) (:output |src) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:reload-fn |app.server/reload!)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
  :ir $ {} (:package |app)
    :files $ {}
      |app.client $ {}
        :defs $ {}
          |*states $ {} (:at 1500541010211) (:by nil) (:id |HyttQ9UlgCSW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629485852327) (:by |B1y7Rc-Zz) (:id |BJqtmc8gx0BZ) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BJjtXqUxg0SZ) (:text |*states) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkRKmc8leABb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyJ975UexAHW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1584880530097) (:by |B1y7Rc-Zz) (:id |1Yuq22AQ1) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584880530868) (:by |B1y7Rc-Zz) (:id |1GDjFomnM-) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1584880531270) (:by |B1y7Rc-Zz) (:id |zRWFjSytJ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584880532120) (:by |B1y7Rc-Zz) (:id |Bn7orHMVAa) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584880533921) (:by |B1y7Rc-Zz) (:id |RkFtRwVgVp) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584880536346) (:by |B1y7Rc-Zz) (:id |ZZ5bgHrI0) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584880536607) (:by |B1y7Rc-Zz) (:id |VrKjvp-zAs) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584880536837) (:by |B1y7Rc-Zz) (:id |vLzhsv8-1P) (:text |[]) (:type :leaf)
                  |r $ {} (:at 1586796003586) (:by |B1y7Rc-Zz) (:id |YwN7S0gWO2) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1586796006972) (:by |B1y7Rc-Zz) (:id |YwN7S0gWO2leaf) (:text |:records) (:type :leaf)
                      |j $ {} (:at 1586796007211) (:by |B1y7Rc-Zz) (:id |vXbNiHjM_F) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586796008244) (:by |B1y7Rc-Zz) (:id |QGB7c4_J3) (:text |{}) (:type :leaf)
          |*store $ {} (:at 1500541010211) (:by nil) (:id |H1dE79UxlCHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629485859586) (:by |B1y7Rc-Zz) (:id |HyFVQqIgxAH-) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9NQcLgx0rW) (:text |*store) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by |root) (:id |ry6EXcUleRBb) (:text |nil) (:type :leaf)
          |connect! $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355358892) (:by |B1y7Rc-Zz) (:text |on-open) (:type :leaf)
              |l $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                          |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |js/location.href) (:type :leaf)
                              |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                      |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |l $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |.-host) (:type :leaf)
                              |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |js/location.hostname) (:type :leaf)
                      |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |l $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |.-port) (:type :leaf)
                              |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                      |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text "|\"ws://") (:type :leaf)
                          |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |l $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                          |o $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                      |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |:on-open) (:type :leaf)
                              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
                                  |l $ {} (:at 1645355354018) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355356095) (:by |B1y7Rc-Zz) (:text |on-open) (:type :leaf)
                          |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |:on-close) (:type :leaf)
                              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                                      |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                                      |h $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |l $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |js/console.error) (:type :leaf)
                                      |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!") (:type :leaf)
                          |l $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |:on-data) (:type :leaf)
                              |b $ {} (:at 1645355313020) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
          |dispatch! $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |l $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                      |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                          |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                  |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text "|\"Dispatch") (:type :leaf)
                      |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                      |l $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |o $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                      |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                              |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                          |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                              |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |l $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                              |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |l $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                              |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                              |h $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |o $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |:effect/connect) (:type :leaf)
                      |b $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355272124) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
                          |b $ {} (:at 1645355374497) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355374743) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1645355375124) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                              |h $ {} (:at 1645355376551) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355380840) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                                  |b $ {} (:at 1645355389969) (:by |B1y7Rc-Zz) (:text "|\"TODO: refresh page") (:type :leaf)
          |main! $ {} (:at 1500541010211) (:by nil) (:id |BJCEXcIglASW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |B1krmcIglAHb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |r1gSXcLlgAHZ) (:text |main!) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |r1ZBm58llAS-) (:type :expr)
                :data $ {}
              |t $ {} (:at 1544874518376) (:by |B1y7Rc-Zz) (:id |ICEtj5Fxmg) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544874519276) (:by |B1y7Rc-Zz) (:id |ICEtj5Fxmgleaf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1544874524299) (:by |B1y7Rc-Zz) (:id |ckXl0VHmU) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1544874525129) (:by |B1y7Rc-Zz) (:id |6gcIZj22Hd) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544874525354) (:by |B1y7Rc-Zz) (:id |hoH8abMFL) (:text |if) (:type :leaf)
                      |j $ {} (:at 1544874529605) (:by |B1y7Rc-Zz) (:id |VT1AFOCPy3) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1544874539526) (:by |B1y7Rc-Zz) (:id |tJW-De5LCf) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1544874537560) (:by |B1y7Rc-Zz) (:id |1o5SA2gNC) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1500541010211) (:by nil) (:id |HJdBX9IglRHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1tBm9LgeCBZ) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |S15B7qUllRHW) (:text |render!) (:type :leaf)
              |xD $ {} (:at 1512319371768) (:by |B1y7Rc-Zz) (:id |ryN9FobbM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1512319373162) (:by |B1y7Rc-Zz) (:id |HkeQ9KjZ-f) (:text |connect!) (:type :leaf)
                  |j $ {} (:at 1586795735659) (:by |B1y7Rc-Zz) (:id |N457JJpR07) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1586795736278) (:by |B1y7Rc-Zz) (:id |FTGs3Qsn4x) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1586795736507) (:by |B1y7Rc-Zz) (:id |kzws2qtagk) (:type :expr)
                        :data $ {}
                      |T $ {} (:at 1586795733116) (:by |B1y7Rc-Zz) (:id |6435BqHrUZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586795733116) (:by |B1y7Rc-Zz) (:id |MYg2WRkTJx) (:text |start-test-loop!) (:type :leaf)
              |yT $ {} (:at 1500541010211) (:by nil) (:id |S1GOX5UxlCBb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJQ_79Uel0HW) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |HyE_79IgeCHZ) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |BkBOQ58eeArZ) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629485897582) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1629485898233) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1629485898525) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485899381) (:by |B1y7Rc-Zz) (:text |s) (:type :leaf)
                          |j $ {} (:at 1629485899879) (:by |B1y7Rc-Zz) (:text |p) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |rJ8uXcLlxABW) (:type :expr)
                        :data $ {}
                          |r $ {} (:at 1500541010211) (:by |root) (:id |By5um58gg0BW) (:text |render-app!) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |Syi_79UgxAHb) (:text |render!) (:type :leaf)
              |yj $ {} (:at 1500541010211) (:by nil) (:id |S12_Q98lxRS-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkadXcIxe0HW) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |S1CuX5UglRr-) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |Bk1YXqIxe0HZ) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629485901315) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1629485901825) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1629485902408) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485902826) (:by |B1y7Rc-Zz) (:text |s) (:type :leaf)
                          |j $ {} (:at 1629485903386) (:by |B1y7Rc-Zz) (:text |p) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |rkeK75Ule0SZ) (:type :expr)
                        :data $ {}
                          |r $ {} (:at 1500541010211) (:by |root) (:id |BkVtQ9LggCBW) (:text |render-app!) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |B1BF7c8lxRH-) (:text |render!) (:type :leaf)
              |yp $ {} (:at 1545239347653) (:by |B1y7Rc-Zz) (:id |xsXQphbiL) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545239515366) (:by |B1y7Rc-Zz) (:id |xsXQphbiLleaf) (:text |on-page-touch) (:type :leaf)
                  |j $ {} (:at 1629485919249) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1629485919745) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1629485919991) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |T $ {} (:at 1545239354450) (:by |B1y7Rc-Zz) (:id |L4nfTN5HbZ) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1545239386447) (:by |B1y7Rc-Zz) (:id |VLEK7Deo8y) (:text |if) (:type :leaf)
                          |r $ {} (:at 1545239374628) (:by |B1y7Rc-Zz) (:id |UXyM65FXAg) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545239374628) (:by |B1y7Rc-Zz) (:id |-Is1GQONi9) (:text |nil?) (:type :leaf)
                              |j $ {} (:at 1545239374628) (:by |B1y7Rc-Zz) (:id |9pOm8A9oLv) (:text |@*store) (:type :leaf)
                          |v $ {} (:at 1545239374628) (:by |B1y7Rc-Zz) (:id |bL7TIWGWuL) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1562176366189) (:by |B1y7Rc-Zz) (:id |ff1BEzXXGX) (:text |connect!) (:type :leaf)
                              |j $ {} (:at 1586795741111) (:by |B1y7Rc-Zz) (:id |TXw0qm3UC) (:text |nil) (:type :leaf)
              |yr $ {} (:at 1500541010211) (:by nil) (:id |rJ8FQc8xx0S-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ryvF75UgxCHW) (:text |println) (:type :leaf)
                  |j $ {} (:at 1562176360971) (:by |B1y7Rc-Zz) (:id |BJuKm5IglCSb) (:text "|\"App started!") (:type :leaf)
          |mount-target $ {} (:at 1500541010211) (:by nil) (:id |BkpTXqIleASW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJAa7qIllRrW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BykCX9IlxCrZ) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rJl0mcUxeRS-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJbRmqLgeCHW) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |Byz0Q58leRrb) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |BkmCm9LggCrW) (:text "|\".app") (:type :leaf)
          |on-server-data $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
              |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
              |v $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:") (:type :leaf)
                      |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |v $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                      |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                                  |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text "|\"Changes") (:type :leaf)
                                  |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |to-js-data) (:type :leaf)
                                      |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                          |v $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                              |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                              |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                                  |j $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                                  |r $ {} (:at 1629485500155) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                  |x $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |:ping) (:type :leaf)
                      |j $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |ping-id) (:type :leaf)
                                  |j $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                              |j $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                              |r $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |v $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                  |r $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |ping-id) (:type :leaf)
                                  |v $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |:finish-time) (:type :leaf)
                              |x $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485802769) (:by |B1y7Rc-Zz) (:text |js/Date.now) (:type :leaf)
          |reload! $ {} (:at 1500541010211) (:by nil) (:id |BybpmqIeeCr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Skz6mqLllAB-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BkXp7qLxx0Sb) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HyN67qUllASZ) (:type :expr)
                :data $ {}
              |v $ {} (:at 1500541010211) (:by nil) (:id |BkHTX9LglArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJLTm5LllRH-) (:text |clear-cache!) (:type :leaf)
              |x $ {} (:at 1500541010211) (:by nil) (:id |BkPaX98gxAHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Byua7qIle0Sb) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |HyF67c8egRrZ) (:text |render!) (:type :leaf)
              |y $ {} (:at 1500541010211) (:by nil) (:id |Hyc6Q9Uel0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkipXq8geAB-) (:text |println) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |Hyh679IegASZ) (:text "|\"Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1500541010211) (:by nil) (:id |B1Eh7cIxeCrZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJS3QqLglABb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SyI3Q58elRrW) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Byv2X98ggArZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ryOnXqIex0Bb) (:text |renderer) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |SJK375UlxCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkq3QqIglCHZ) (:text |renderer) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |Bysn79Igl0H-) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |By2n7qLeeAS-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6nmc8el0rW) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1584880509935) (:by |B1y7Rc-Zz) (:id |dg4hzeLvDw) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1584880511636) (:by |B1y7Rc-Zz) (:id |75AuqOvLz) (:text |:states) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJR2Q5UlxCBW) (:text |@*states) (:type :leaf)
                      |n $ {} (:at 1586796227035) (:by |B1y7Rc-Zz) (:id |iHOGK2S_UI) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586796231889) (:by |B1y7Rc-Zz) (:id |xTwIPYEC0) (:text |:records) (:type :leaf)
                          |j $ {} (:at 1586796230798) (:by |B1y7Rc-Zz) (:id |VrCr6NG6Q) (:text |@*states) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by |root) (:id |Sy1p7c8ex0rZ) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1512318370491) (:by |B1y7Rc-Zz) (:id |r1gcsBi-ZG) (:text |dispatch!) (:type :leaf)
          |simulate-login! $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
              |r $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |.!getItem) (:type :leaf)
                              |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                              |r $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text "|\"Found storage.") (:type :leaf)
                          |r $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                              |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |:user/log-in) (:type :leaf)
                              |r $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                  |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |v $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629485832774) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.") (:type :leaf)
          |start-test-loop! $ {} (:at 1586795522235) (:by |B1y7Rc-Zz) (:id |sFH9jCDtID) (:type :expr)
            :data $ {}
              |T $ {} (:at 1586795524033) (:by |B1y7Rc-Zz) (:id |KmPXrJX4wl) (:text |defn) (:type :leaf)
              |j $ {} (:at 1586795522235) (:by |B1y7Rc-Zz) (:id |8ViXPVV9BN) (:text |start-test-loop!) (:type :leaf)
              |r $ {} (:at 1586795522235) (:by |B1y7Rc-Zz) (:id |VD2_xWOinp) (:type :expr)
                :data $ {}
              |v $ {} (:at 1586795837946) (:by |B1y7Rc-Zz) (:id |Gfc9CFgxwi) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1586795860706) (:by |B1y7Rc-Zz) (:id |Z5bfwSDg7) (:text |repeat!) (:type :leaf)
                  |L $ {} (:at 1586795887025) (:by |B1y7Rc-Zz) (:id |YXL-mYbCNg) (:text |2) (:type :leaf)
                  |T $ {} (:at 1586795861833) (:by |B1y7Rc-Zz) (:id |oV_An-O_UQ) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1586795862395) (:by |B1y7Rc-Zz) (:id |9x0mlGblX) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1586795862665) (:by |B1y7Rc-Zz) (:id |mBRsCeZzEJ) (:type :expr)
                        :data $ {}
                      |T $ {} (:at 1586797133973) (:by |B1y7Rc-Zz) (:id |OMbTyyKCG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1586797134615) (:by |B1y7Rc-Zz) (:id |wEu1JQzXI) (:text |if) (:type :leaf)
                          |L $ {} (:at 1586797136342) (:by |B1y7Rc-Zz) (:id |onpQhhpMz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1586797137672) (:by |B1y7Rc-Zz) (:id |HzNJmg0hvy) (:text |=) (:type :leaf)
                              |T $ {} (:at 1586797139336) (:by |B1y7Rc-Zz) (:id |R5NWV9GY9j) (:text |js/document.visibilityState) (:type :leaf)
                              |j $ {} (:at 1586797143903) (:by |B1y7Rc-Zz) (:id |5nSkL-Pwle) (:text "|\"visible") (:type :leaf)
                          |T $ {} (:at 1586795964600) (:by |B1y7Rc-Zz) (:id |5CW1u8Z4_K) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1586795965317) (:by |B1y7Rc-Zz) (:id |vXeUhDfuZO) (:text |let) (:type :leaf)
                              |L $ {} (:at 1586795965558) (:by |B1y7Rc-Zz) (:id |wwoyZsw3wP) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586795967401) (:by |B1y7Rc-Zz) (:id |XHMcDIO1d) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586795984048) (:by |B1y7Rc-Zz) (:id |7oGIa5NM5P) (:text |ping-id) (:type :leaf)
                                      |j $ {} (:at 1586795990098) (:by |B1y7Rc-Zz) (:id |RgRFf3y2IP) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1645355414386) (:by |B1y7Rc-Zz) (:id |JuVqEv0-Ia) (:text |nanoid) (:type :leaf)
                              |T $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |k_gfhLHaWA) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |EhPQQGMUUL) (:text |ws-send!) (:type :leaf)
                                  |j $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |q7RBQ534W7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |gAiBfSkFVQ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |qIBaHlhnI7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |4kgJfxcSfJ) (:text |:kind) (:type :leaf)
                                          |j $ {} (:at 1586795582606) (:by |B1y7Rc-Zz) (:id |7eXm4WLegA) (:text |:ping) (:type :leaf)
                                      |r $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |KeWMkRNEr0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |Kts3VLmmXP) (:text |:op) (:type :leaf)
                                          |j $ {} (:at 1586795543936) (:by |B1y7Rc-Zz) (:id |l8t4upsbwr) (:text |:effect/ping) (:type :leaf)
                                      |v $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |nppdAHjuM5) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586795535529) (:by |B1y7Rc-Zz) (:id |Z-u2J1R2em) (:text |:data) (:type :leaf)
                                          |j $ {} (:at 1586795988342) (:by |B1y7Rc-Zz) (:id |28my63Jarg) (:text |ping-id) (:type :leaf)
                              |j $ {} (:at 1586795995092) (:by |B1y7Rc-Zz) (:id |vTD1sVz5M) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796013737) (:by |B1y7Rc-Zz) (:id |vTD1sVz5Mleaf) (:text |swap!) (:type :leaf)
                                  |j $ {} (:at 1586795999233) (:by |B1y7Rc-Zz) (:id |lbnR0v_k1A) (:text |*states) (:type :leaf)
                                  |r $ {} (:at 1586796016484) (:by |B1y7Rc-Zz) (:id |XV_83KgyvS) (:text |assoc-in) (:type :leaf)
                                  |v $ {} (:at 1586796017736) (:by |B1y7Rc-Zz) (:id |h6H7KFLqD) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796017865) (:by |B1y7Rc-Zz) (:id |NcU9coZosO) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1586796020001) (:by |B1y7Rc-Zz) (:id |jrNVehpFm) (:text |:records) (:type :leaf)
                                      |r $ {} (:at 1586796031600) (:by |B1y7Rc-Zz) (:id |VR5CKrScy5) (:text |ping-id) (:type :leaf)
                                  |x $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |tpIKwgHsFz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |ehr67M80dR) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |WKJ6YXVxt7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |HKFDgHibkP) (:text |:start-time) (:type :leaf)
                                          |j $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |M2qn_ekWUH) (:type :expr)
                                            :data $ {}
                                              |j $ {} (:at 1629486335012) (:by |B1y7Rc-Zz) (:id |ybk72AJy3u) (:text |js/Date.now) (:type :leaf)
                                      |r $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |NSL004ajov) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |mzQKN8Rv_L) (:text |:finish-time) (:type :leaf)
                                          |j $ {} (:at 1586796314202) (:by |B1y7Rc-Zz) (:id |y8v_QqVvWs) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |S1uAGcLllRr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |H1KCzq8geASW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |BycAGqLleAH-) (:text |app.client) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |BysRMcUleArZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |B130M9IxgASW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rypCzcUgeAHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S10CGq8exABb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyJ1m9Ueg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SylJXqLgxRrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hkb17q8lg0H-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |BkzkmqIge0rW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkmJX5LelABb) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SkEkQ9IgxArW) (:text |clear-cache!) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SJBkX9Ugl0S-) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryIJ7cIglCrZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkPyQqLlgCBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1Ok75IxgRSW) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SyFyQqIxlCrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SJ9J798ggAHZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HJoJXqLgeRHW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1584874339542) (:by |B1y7Rc-Zz) (:id |S1ny7cUlx0Bb) (:text |update-states) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |r1pJXcIgx0SW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJ0J7cLeeCS-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJJe75Igx0Sb) (:text |app.comp.container) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rklgX5UxxCHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyWx7qIex0BW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkMx75Ixl0rW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJmxQqIelAS-) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SyVxmc8geRSb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Blm5LelRr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJUlmc8eeRSZ) (:text |cljs.reader) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJDxQ5LexAHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1OxX98exRBW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SyKeX98egArb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1cg7qUlgABb) (:text |read-string) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |HJXbm58xeRrW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |B14bQq8eg0rW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyrZm9IegRSZ) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BJ8b75LgeCS-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |Byw-mqIgl0HZ) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1527788760671) (:by |root) (:id |rJWJr3TyQ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788761874) (:by |root) (:id |rJWJr3TyQleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788764341) (:by |root) (:id |SJZzyHh6J7) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788766627) (:by |root) (:id |HJI4JHhakX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788767318) (:by |root) (:id |BJ-DJH3a17) (:text |config) (:type :leaf)
                |yr $ {} (:at 1544638775980) (:by |B1y7Rc-Zz) (:id |lMCAY6KwD) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1544638776805) (:by |B1y7Rc-Zz) (:id |lMCAY6KwDleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544638780714) (:by |B1y7Rc-Zz) (:id |zEN00LwW1E) (:text |ws-edn.client) (:type :leaf)
                    |r $ {} (:at 1544638782705) (:by |B1y7Rc-Zz) (:id |m3-1FVuogh) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1544638782913) (:by |B1y7Rc-Zz) (:id |wG2B6CmLNG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1544638783120) (:by |B1y7Rc-Zz) (:id |I2hXPBL2YJ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1544638785998) (:by |B1y7Rc-Zz) (:id |JiK-h2n4iN) (:text |ws-connect!) (:type :leaf)
                        |r $ {} (:at 1544638787583) (:by |B1y7Rc-Zz) (:id |h15_zxZNZf) (:text |ws-send!) (:type :leaf)
                |yv $ {} (:at 1544639047460) (:by |B1y7Rc-Zz) (:id |rkLsBPMduC) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1544639047763) (:by |B1y7Rc-Zz) (:id |N6w_dOM0yc) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544639048479) (:by |B1y7Rc-Zz) (:id |KvS5_SXv0S) (:text |recollect.patch) (:type :leaf)
                    |r $ {} (:at 1544639049759) (:by |B1y7Rc-Zz) (:id |8FxYaO5JP) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1544639049952) (:by |B1y7Rc-Zz) (:id |07xWSkTUjV) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1544639050115) (:by |B1y7Rc-Zz) (:id |D49-t_AC7B) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1544639057259) (:by |B1y7Rc-Zz) (:id |y2z8vLZvwg) (:text |patch-twig) (:type :leaf)
                |yx $ {} (:at 1545239397101) (:by |B1y7Rc-Zz) (:id |9yRRVSPy_o) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545239397493) (:by |B1y7Rc-Zz) (:id |9yRRVSPy_oleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545239402091) (:by |B1y7Rc-Zz) (:id |pVpV5eueG) (:text |cumulo-util.core) (:type :leaf)
                    |r $ {} (:at 1545239402776) (:by |B1y7Rc-Zz) (:id |KGMk6pkEm_) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545239402983) (:by |B1y7Rc-Zz) (:id |39TJMdIhRL) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545239403156) (:by |B1y7Rc-Zz) (:id |CzqRUswnLt) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545239519506) (:by |B1y7Rc-Zz) (:id |9b8ZYaPnbu) (:text |on-page-touch) (:type :leaf)
                        |r $ {} (:at 1586795868929) (:by |B1y7Rc-Zz) (:id |35iQrZ5NYS) (:text |repeat!) (:type :leaf)
                |yy $ {} (:at 1553788385335) (:by |B1y7Rc-Zz) (:id |Ol6pRFB9Pq) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1553788385624) (:by |B1y7Rc-Zz) (:id |Ol6pRFB9Pqleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1553788387912) (:by |B1y7Rc-Zz) (:id |PjY-5vhezr) (:text "|\"url-parse") (:type :leaf)
                    |r $ {} (:at 1629485884457) (:by |B1y7Rc-Zz) (:id |xuQXGFRA-i) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1553788391454) (:by |B1y7Rc-Zz) (:id |BlhK80C3x7) (:text |url-parse) (:type :leaf)
                |yyj $ {} (:at 1586795826794) (:by |B1y7Rc-Zz) (:id |-mlsNcRfsj) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1586795827331) (:by |B1y7Rc-Zz) (:id |-mlsNcRfsjleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1645355417978) (:by |B1y7Rc-Zz) (:id |Xr3J_8tcCS) (:text "|\"nanoid") (:type :leaf)
                    |r $ {} (:at 1645355424407) (:by |B1y7Rc-Zz) (:id |pZE4N4BM47) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1645355425343) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355420683) (:by |B1y7Rc-Zz) (:id |-SyLNyy4U7) (:text |nanoid) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1dWm9UggRBZ) (:type :expr)
          :data $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1500541010211) (:by nil) (:id |rJcN9Iee0Bb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |ryo4cIlgAHZ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |H1hV5IlxCH-) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |r1aE9IglCB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1CV9UxeCBb) (:text |states) (:type :leaf)
                  |b $ {} (:at 1586796235454) (:by |B1y7Rc-Zz) (:id |XCoYGky6K2) (:text |records) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |SkyrqIglCr-) (:text |store) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |HyxSq8llRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByZB58exAB-) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkzr9UggCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HJmS5IllASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJVBcUxx0Bb) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |ByrH5IggAHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1LScUglRSW) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJvHc8eeAB-) (:text |states) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |ryuSqIllABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkYrq8lgCHb) (:text |session) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BycSqLllCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hksr5IxlCSZ) (:text |:session) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJhS5UxeRBb) (:text |store) (:type :leaf)
                      |r $ {} (:at 1525106928554) (:by |root) (:id |HyYgtpEaG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106929232) (:by |root) (:id |HyYgtpEaGleaf) (:text |router) (:type :leaf)
                          |j $ {} (:at 1525106929915) (:by |root) (:id |Skg5etaNTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106930860) (:by |root) (:id |HyLFeYpEaG) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1525106931558) (:by |root) (:id |HkNigK646z) (:text |store) (:type :leaf)
                      |v $ {} (:at 1525106933346) (:by |root) (:id |Sye6lY64aM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106935393) (:by |root) (:id |Sye6lY64aMleaf) (:text |router-data) (:type :leaf)
                          |j $ {} (:at 1525106935675) (:by |root) (:id |H1eWtaNTz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106936827) (:by |root) (:id |r1u1WKTNTz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1525106937665) (:by |root) (:id |SkMW-tpE6M) (:text |router) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |ByaHq8gxCSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |S10HqUelASb) (:text |if) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJJIc8gg0BZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryeLc8egCS-) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |r1-LcUggCrZ) (:text |store) (:type :leaf)
                      |r $ {} (:at 1521951403873) (:by |root) (:id |rJE2zoVqz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521951417580) (:by |root) (:id |HyYZehIDnvM) (:text |comp-offline) (:type :leaf)
                      |v $ {} (:at 1500541010211) (:by nil) (:id |BJGP9LlxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1mvc8lgRH-) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1VPqLxxRrb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJHD5UxeCHZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1Uwq8gxArb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkwD58ggCr-) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkdw5Lgg0rW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SktwcIxlCS-) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |Hk9PqUlg0Bb) (:text |ui/global) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by |root) (:id |HkjD9Lel0B-) (:text |ui/fullscreen) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by |root) (:id |SJ3vcUegASZ) (:text |ui/column) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |r1pw9LelCr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120265747) (:by |root) (:id |SyAvc8lgCB-) (:text |comp-navigation) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkyu9UglRHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkedq8xxAB-) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJ-_cLge0SW) (:text |store) (:type :leaf)
                              |r $ {} (:at 1523120353961) (:by |root) (:id |BkW5yKdLjM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120357277) (:by |root) (:id |SJx9JF_Ljz) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120358953) (:by |root) (:id |rkf6kYOIiM) (:text |store) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |rkXYc8ll0SW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJVYcUxlRrZ) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |S1rK5UggABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkUtqUxg0HZ) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1Dtq8lxArb) (:text |store) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BJl4-FpETz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkbqq8xgAHb) (:text |case) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkz5q8eeRH-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJX958ggAS-) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |HkE558leAH-) (:text |router) (:type :leaf)
                                  |n $ {} (:at 1525106918943) (:by |root) (:id |H11lKp4Tz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525106921967) (:by |root) (:id |H11lKp4Tzleaf) (:text |:home) (:type :leaf)
                                      |j $ {} (:at 1586796334254) (:by |B1y7Rc-Zz) (:id |VKdpY2qdV1) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796335960) (:by |B1y7Rc-Zz) (:id |zKWYxYJr7) (:text |comp-home) (:type :leaf)
                                          |j $ {} (:at 1586796337910) (:by |B1y7Rc-Zz) (:id |NvuphD2Oi) (:text |records) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |rJH998xlAH-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |H1LqqUexArZ) (:text |:profile) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |B1v5cLxgASb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJd95UxlRHZ) (:text |comp-profile) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |ByF99IxlCBZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJq558xxRBZ) (:text |:user) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |HJo558lxAH-) (:text |store) (:type :leaf)
                                          |r $ {} (:at 1524070838527) (:by |root) (:id |rykaYxH2G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070840507) (:by |root) (:id |BJxAhYgHnG) (:text |:data) (:type :leaf)
                                              |j $ {} (:at 1524070841286) (:by |root) (:id |rJbaYlH2z) (:text |router) (:type :leaf)
                                  |x $ {} (:at 1525106913773) (:by |root) (:id |rJ9kFTNTz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525106915016) (:by |root) (:id |rJ9kFTNTzleaf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1525106916644) (:by |root) (:id |rJWjyYpNaG) (:text |router) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |BkciqUxgRrZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BysicIxgAHW) (:text |comp-login) (:type :leaf)
                                  |j $ {} (:at 1584877243021) (:by |B1y7Rc-Zz) (:id |0L-Tvuz0-k) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1584877243645) (:by |B1y7Rc-Zz) (:id |-nw8MJTDY) (:text |>>) (:type :leaf)
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkhocIleRrb) (:text |states) (:type :leaf)
                                      |j $ {} (:at 1584877245341) (:by |B1y7Rc-Zz) (:id |g-pcBbXVob) (:text |:login) (:type :leaf)
                          |w $ {} (:at 1524279203814) (:by |root) (:id |S1hsPmOnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524279211924) (:by |root) (:id |S1hsPmOnMleaf) (:text |comp-status-color) (:type :leaf)
                              |j $ {} (:at 1524279213788) (:by |root) (:id |Bk83D7Ohf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279214588) (:by |root) (:id |H1BhwXu3M) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279215366) (:by |root) (:id |SyevnPQ_nf) (:text |store) (:type :leaf)
                          |x $ {} (:at 1521911488967) (:by |root) (:id |B1gKaUWV5M) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911509225) (:by |root) (:id |Sk-tpU-Vcf) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911495407) (:by |root) (:id |H1xk08W4cG) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by nil) (:id |S16oqUeeASb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkAi58lx0S-) (:text |comp-inspect) (:type :leaf)
                                  |j $ {} (:at 1562176377826) (:by |B1y7Rc-Zz) (:id |HJkhq8gxRrb) (:text "|\"Store") (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |Skln58ge0rb) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |r1fqzo4cM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SyeT5UllASZ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SJZ6qUleRS-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryfp9IxgABW) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |Skma9UglRr-) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |r1V65Ixl0HW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkBp9LllArb) (:text |:left) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |ryIpcIggCrb) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |SJv6q8xeAH-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJ_acUlgCrZ) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1562176491493) (:by |B1y7Rc-Zz) (:id |BkYpc8ee0B-) (:text "|\"100%") (:type :leaf)
                          |y $ {} (:at 1500541010211) (:by nil) (:id |H1G3c8ll0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529230769433) (:by |root) (:id |HkQnqIex0Sb) (:text |comp-messages) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |Bk429LxgCS-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1B2cLgxCHZ) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryInqUelCHb) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJw25Uge0BW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJd398el0rZ) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |B1Yn98xlRrZ) (:text |:session) (:type :leaf)
                                      |r $ {} (:at 1529230765972) (:by |root) (:id |SJqh5UlgRB-) (:text |:messages) (:type :leaf)
                              |n $ {} (:at 1529230771518) (:by |root) (:id |H122BnXW7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529230771976) (:by |root) (:id |H122BnXW7leaf) (:text |{}) (:type :leaf)
                              |p $ {} (:at 1529230772453) (:by |root) (:id |H1m2hB2Q-Q) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529230773090) (:by |root) (:id |H1m2hB2Q-Qleaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1529230773925) (:by |root) (:id |H1gA2B3mWQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529230775135) (:by |root) (:id |Sk0hr3X-Q) (:text |info) (:type :leaf)
                                      |j $ {} (:at 1529230778336) (:by |root) (:id |Bybgar2m-m) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1529230780551) (:by |root) (:id |HyraS3Q-m) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529230781631) (:by |root) (:id |HyraS3Q-mleaf) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1529231458145) (:by |root) (:id |SygIaH3Xb7) (:text |:session/remove-message) (:type :leaf)
                                      |r $ {} (:at 1529230813335) (:by |root) (:id |r1eSJU2XZm) (:text |info) (:type :leaf)
                          |yT $ {} (:at 1521911502552) (:by |root) (:id |rkvCI-NcM) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911507241) (:by |root) (:id |rkgPCLW49z) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911504664) (:by |root) (:id |S1-_CLWN5M) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1507828710405) (:by |root) (:id |BJgRkVX62W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828712159) (:by |root) (:id |BJgRkVX62Wleaf) (:text |comp-reel) (:type :leaf)
                                  |j $ {} (:at 1507829101137) (:by |root) (:id |HylruBmT3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830262253) (:by |root) (:id |HyBgV7T2Z) (:text |:reel-length) (:type :leaf)
                                      |j $ {} (:at 1507829104010) (:by |root) (:id |S1MvOr7a2Z) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1507828721052) (:by |root) (:id |ByteVmTnZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828722268) (:by |root) (:id |ByxdeN7anb) (:text |{}) (:type :leaf)
          |comp-home $ {} (:at 1586796341778) (:by |B1y7Rc-Zz) (:id |88D4jCbr41) (:type :expr)
            :data $ {}
              |T $ {} (:at 1586796344115) (:by |B1y7Rc-Zz) (:id |aVNK7yeVxs) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1586796341778) (:by |B1y7Rc-Zz) (:id |8zGMSS_cZg) (:text |comp-home) (:type :leaf)
              |r $ {} (:at 1586796341778) (:by |B1y7Rc-Zz) (:id |AS-5nmg6rM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1586796341778) (:by |B1y7Rc-Zz) (:id |NoWseR8vbY) (:text |records) (:type :leaf)
              |v $ {} (:at 1586796345539) (:by |B1y7Rc-Zz) (:id |BoElKfLXcZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1586796346119) (:by |B1y7Rc-Zz) (:id |BoElKfLXcZleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1586796346338) (:by |B1y7Rc-Zz) (:id |AnTtDd1GEV) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1586796346658) (:by |B1y7Rc-Zz) (:id |OGCrbSVWqZ) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1586796570074) (:by |B1y7Rc-Zz) (:id |eukKfJ8qz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586796570888) (:by |B1y7Rc-Zz) (:id |64hXJ8xXbt) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1586796620126) (:by |B1y7Rc-Zz) (:id |ozRTpaX-g) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1586796621820) (:by |B1y7Rc-Zz) (:id |bDQJTt8ZJ) (:text |merge) (:type :leaf)
                              |P $ {} (:at 1586796647359) (:by |B1y7Rc-Zz) (:id |_zYRIdffX) (:text |ui/expand) (:type :leaf)
                              |T $ {} (:at 1586796574319) (:by |B1y7Rc-Zz) (:id |SAtPtsKT-) (:text |ui/row) (:type :leaf)
                  |r $ {} (:at 1586796464196) (:by |B1y7Rc-Zz) (:id |x56atvSuA) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1586796467280) (:by |B1y7Rc-Zz) (:id |oPMo2eP26U) (:text |list->) (:type :leaf)
                      |L $ {} (:at 1586796468461) (:by |B1y7Rc-Zz) (:id |q0dpn7VseR) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586796468835) (:by |B1y7Rc-Zz) (:id |j9OA44b-R) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1586796634514) (:by |B1y7Rc-Zz) (:id |XPeg0JajiX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1586796635411) (:by |B1y7Rc-Zz) (:id |gEgW5QTAmF) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1586796657183) (:by |B1y7Rc-Zz) (:id |ulj4St8ocI) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1586796658686) (:by |B1y7Rc-Zz) (:id |GtH63zewPD) (:text |merge) (:type :leaf)
                                  |T $ {} (:at 1586798256427) (:by |B1y7Rc-Zz) (:id |LeNNRQsMm) (:text |ui/expand) (:type :leaf)
                                  |j $ {} (:at 1586796659235) (:by |B1y7Rc-Zz) (:id |7ef892eJ-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796659607) (:by |B1y7Rc-Zz) (:id |3xlvqxtH0C) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1586796659842) (:by |B1y7Rc-Zz) (:id |HVIWfhF-AQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796661493) (:by |B1y7Rc-Zz) (:id |G6OCf2xV-3) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1586796663392) (:by |B1y7Rc-Zz) (:id |xQXahB6NjH) (:text |16) (:type :leaf)
                                      |r $ {} (:at 1586796841351) (:by |B1y7Rc-Zz) (:id |RDj2iuFji) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586798267383) (:by |B1y7Rc-Zz) (:id |RDj2iuFjileaf) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1586798272013) (:by |B1y7Rc-Zz) (:id |mV49HAlyS) (:text |320) (:type :leaf)
                      |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |kCFzpbiiTh) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485375107) (:by |B1y7Rc-Zz) (:id |VfMjTFTIEQ) (:text |->) (:type :leaf)
                          |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |gU-mhSLJvF) (:text |records) (:type :leaf)
                          |l $ {} (:at 1629486769400) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629486770702) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                          |n $ {} (:at 1586796504088) (:by |B1y7Rc-Zz) (:id |_8uN07QM7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485928454) (:by |B1y7Rc-Zz) (:id |_8uN07QM7leaf) (:text |.sort-by) (:type :leaf)
                              |j $ {} (:at 1586796505599) (:by |B1y7Rc-Zz) (:id |FxFzgjuMGH) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796506688) (:by |B1y7Rc-Zz) (:id |xshE6VtszQ) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1586796507037) (:by |B1y7Rc-Zz) (:id |wClU3KPaql) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485386661) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1586796518447) (:by |B1y7Rc-Zz) (:id |ngKZy4CmwC) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629485378684) (:by |B1y7Rc-Zz) (:id |sQchHd7z6J) (:text |negate) (:type :leaf)
                                      |T $ {} (:at 1586796511337) (:by |B1y7Rc-Zz) (:id |u6cNFCmW6) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796516948) (:by |B1y7Rc-Zz) (:id |u6cNFCmW6leaf) (:text |:start-time) (:type :leaf)
                                          |j $ {} (:at 1629485379834) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629485381656) (:by |B1y7Rc-Zz) (:id |eRbBUW3Fj) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1629485382277) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                          |r $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |SbfhwctrPx) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485391433) (:by |B1y7Rc-Zz) (:id |YRd2VE8_HZ) (:text |.map-pair) (:type :leaf)
                              |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |PdhaaXh_z3) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |CqcykyE2qW) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |ovJ1PCmS_n) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |w8pQoZTwEQ) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |klbSPzUgeR) (:text |info) (:type :leaf)
                                  |v $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |0NDW-x1iiWq) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |IvzQjC35mbL) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |RSr_SAP3Ftb) (:text |k) (:type :leaf)
                                      |r $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |GPKBdrxPss8) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |MjYcDVLUiIq) (:text |div) (:type :leaf)
                                          |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |iTqf1k4JcK2) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |8CUTgJqrERg) (:text |{}) (:type :leaf)
                                          |r $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |TmG4A3K5tQd) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |i49Fy_siMlu) (:text |<>) (:type :leaf)
                                              |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |141zgIPT_MA) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |So550LQt7GK) (:text |:start-time) (:type :leaf)
                                                  |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |x-TYb3FYXQf) (:text |info) (:type :leaf)
                                              |r $ {} (:at 1586796721608) (:by |B1y7Rc-Zz) (:id |uzhrZ2dydl) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586796721987) (:by |B1y7Rc-Zz) (:id |rIgOF9Sm86) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1586796722190) (:by |B1y7Rc-Zz) (:id |VaR938Xj24) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1586796723785) (:by |B1y7Rc-Zz) (:id |-vMyeharh) (:text |:font-family) (:type :leaf)
                                                      |j $ {} (:at 1586796725964) (:by |B1y7Rc-Zz) (:id |dUQvUuTE8n) (:text |ui/font-code) (:type :leaf)
                                          |t $ {} (:at 1586796492126) (:by |B1y7Rc-Zz) (:id |-ru05Pc6C) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586796493075) (:by |B1y7Rc-Zz) (:id |-ru05Pc6Cleaf) (:text |=<) (:type :leaf)
                                              |j $ {} (:at 1586796494265) (:by |B1y7Rc-Zz) (:id |YBDVRrOZbS) (:text |16) (:type :leaf)
                                              |r $ {} (:at 1586796494833) (:by |B1y7Rc-Zz) (:id |g5Pku3O5lr) (:text |nil) (:type :leaf)
                                          |v $ {} (:at 1586797480437) (:by |B1y7Rc-Zz) (:id |uJi30Ae3HX) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1586797485307) (:by |B1y7Rc-Zz) (:id |SCWCOYUIdo) (:text |if) (:type :leaf)
                                              |L $ {} (:at 1586797486635) (:by |B1y7Rc-Zz) (:id |v3C03Y329) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1586797488161) (:by |B1y7Rc-Zz) (:id |1Tctau3Kwf) (:text |nil?) (:type :leaf)
                                                  |T $ {} (:at 1586797485814) (:by |B1y7Rc-Zz) (:id |pfczroajo0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1586797485814) (:by |B1y7Rc-Zz) (:id |mJ_0C0iYbz) (:text |:finish-time) (:type :leaf)
                                                      |j $ {} (:at 1586797485814) (:by |B1y7Rc-Zz) (:id |uy5x8fuOuH) (:text |info) (:type :leaf)
                                              |P $ {} (:at 1586797585260) (:by |B1y7Rc-Zz) (:id |ErqK-ZYNt) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1586797585907) (:by |B1y7Rc-Zz) (:id |dmDueAbwLF) (:text |<>) (:type :leaf)
                                                  |T $ {} (:at 1586797490821) (:by |B1y7Rc-Zz) (:id |QW9qTFcyea) (:text "|\"...") (:type :leaf)
                                              |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |aqd3aN65PYM) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |DLMwhaejvwc) (:text |<>) (:type :leaf)
                                                  |j $ {} (:at 1586796735084) (:by |B1y7Rc-Zz) (:id |lO-nS_z36) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1586796736494) (:by |B1y7Rc-Zz) (:id |6P-NG5bIr6) (:text |str) (:type :leaf)
                                                      |T $ {} (:at 1586796479036) (:by |B1y7Rc-Zz) (:id |1XP65jpU7f) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1586796479737) (:by |B1y7Rc-Zz) (:id |L8rWmn4QL) (:text |-) (:type :leaf)
                                                          |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |iYLF-iGDyp8) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |UKlk6_dObEM) (:text |:finish-time) (:type :leaf)
                                                              |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |UD1dxkZqK7Y) (:text |info) (:type :leaf)
                                                          |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |U_hYNqwOmF) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586796484166) (:by |B1y7Rc-Zz) (:id |UKlk6_dObEM) (:text |:start-time) (:type :leaf)
                                                              |j $ {} (:at 1586796437549) (:by |B1y7Rc-Zz) (:id |UD1dxkZqK7Y) (:text |info) (:type :leaf)
                                                      |j $ {} (:at 1586796738014) (:by |B1y7Rc-Zz) (:id |0WMtkk4_UM) (:text "|\"ms") (:type :leaf)
                                                  |r $ {} (:at 1586796744621) (:by |B1y7Rc-Zz) (:id |dGIXik8pYT) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1586796745259) (:by |B1y7Rc-Zz) (:id |_sOY03VSza) (:text |{}) (:type :leaf)
                                                      |T $ {} (:at 1586796729405) (:by |B1y7Rc-Zz) (:id |E6cG1ydCyO) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586796729405) (:by |B1y7Rc-Zz) (:id |jgzp1VzQsI) (:text |:font-family) (:type :leaf)
                                                          |j $ {} (:at 1586796729405) (:by |B1y7Rc-Zz) (:id |UwWwEujzGC) (:text |ui/font-code) (:type :leaf)
                  |v $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |S-lwo6pUYS) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |LgqUufMnzd) (:text |div) (:type :leaf)
                      |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |h13ukFx8AB) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |H1r2q7LWdd) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |PCeLS5vgtP) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |rofvkOm_iR) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |x03J-X4RcR) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |e6GPnWoygH) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |zjB2m-ZaDD) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |2R5A0Ww2A9) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |bE2GVtckYI) (:text |16) (:type :leaf)
                      |r $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |Awt8FJrnfb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |tc1EAw4erP) (:text |button) (:type :leaf)
                          |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |JY8V_hCFPp) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |bKmryuBUhG) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |PJ38wccd6li) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |qAYzOInmzgq) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |isK4IRL9J4N) (:text |ui/button) (:type :leaf)
                              |r $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |C6CnD-M4M34) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |nr4SI9X9ui5) (:text |:inner-text) (:type :leaf)
                                  |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |hZMr6XMoCRo) (:text "|\"Reset") (:type :leaf)
                              |v $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |_IutTxeVdX-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |QB7kNFDSvh4) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |p7kYI0YnwVv) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |I_GgZ-cpXB8) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |6b4IlWJB8wr) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |jUpbzScNBkE) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |66LbGiEPdMm) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |ip-UkhL12F4) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |113K7sJYgqY) (:text |d!) (:type :leaf)
                                          |j $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |2_OI3RVUiWH) (:text |:effect/clear) (:type :leaf)
                                          |r $ {} (:at 1586796822408) (:by |B1y7Rc-Zz) (:id |EBo7VLMQ-5E) (:text |nil) (:type :leaf)
          |comp-offline $ {} (:at 1519314599832) (:by |root) (:id |rJlxhID3DM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521951399872) (:by |root) (:id |HkWenLP2vM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1519314599832) (:by |root) (:id |BJGx2Iv2Pz) (:text |comp-offline) (:type :leaf)
              |n $ {} (:at 1521951400852) (:by |root) (:id |r1lZnMsV9z) (:type :expr)
                :data $ {}
              |r $ {} (:at 1519314599832) (:by |root) (:id |rkQx2Lv3vz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519314599832) (:by |root) (:id |S14ghIw3Pf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Sx2Lw3PM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519314599832) (:by |root) (:id |ByIghIvhwG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkDg2ID3DM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HJueh8whDf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |B1FenUDnPM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |SJcxhUvnvG) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |SJogn8whDG) (:text |ui/global) (:type :leaf)
                              |r $ {} (:at 1519314599832) (:by |root) (:id |Syhe3IwnDf) (:text |ui/fullscreen) (:type :leaf)
                              |v $ {} (:at 1535564672966) (:by |B1y7Rc-Zz) (:id |S1penIvhwM) (:text |ui/column-dispersive) (:type :leaf)
                              |x $ {} (:at 1535565529682) (:by |B1y7Rc-Zz) (:id |-AFvTS2Xw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535565530129) (:by |B1y7Rc-Zz) (:id |nUIE3znKRk) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535565530397) (:by |B1y7Rc-Zz) (:id |LAxp5ou8Oi) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565536637) (:by |B1y7Rc-Zz) (:id |ZIQEbqIdeF) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1535565541430) (:by |B1y7Rc-Zz) (:id |D9GGMXGBjd) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535565542473) (:by |B1y7Rc-Zz) (:id |MkdHaM_v7_) (:text |:theme) (:type :leaf)
                                          |j $ {} (:at 1535565546181) (:by |B1y7Rc-Zz) (:id |r7am1TeON) (:text |config/site) (:type :leaf)
                  |l $ {} (:at 1535564983624) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565362594) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564984947) (:by |B1y7Rc-Zz) (:id |fp9nHzVG-C) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564985316) (:by |B1y7Rc-Zz) (:id |-pfcoBbYO) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564985627) (:by |B1y7Rc-Zz) (:id |PL7HRl9o2) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564987644) (:by |B1y7Rc-Zz) (:id |_5OHbZKdQt) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535565371727) (:by |B1y7Rc-Zz) (:id |qlVM4N8m7_) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1535565373172) (:by |B1y7Rc-Zz) (:id |0cX3axzT-0) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1535564988232) (:by |B1y7Rc-Zz) (:id |tbKi9HZ-m3) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564988883) (:by |B1y7Rc-Zz) (:id |_jrfZ1j22p) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565472380) (:by |B1y7Rc-Zz) (:id |oNrq_1c5jP) (:text |0) (:type :leaf)
                  |n $ {} (:at 1535564675845) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535564681122) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3Wleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564681371) (:by |B1y7Rc-Zz) (:id |QCgP6c48Rw) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564681741) (:by |B1y7Rc-Zz) (:id |bxXTMaSmzT) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564681981) (:by |B1y7Rc-Zz) (:id |T3goXWla86) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564682940) (:by |B1y7Rc-Zz) (:id |CXGFQrJdrI) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535564683257) (:by |B1y7Rc-Zz) (:id |2Evw3L3U1J) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535564683549) (:by |B1y7Rc-Zz) (:id |tzLQL21KFG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535564683815) (:by |B1y7Rc-Zz) (:id |dVh-zN_TPb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564692026) (:by |B1y7Rc-Zz) (:id |dAStA0OYDH) (:text |:background-image) (:type :leaf)
                                      |j $ {} (:at 1535564692507) (:by |B1y7Rc-Zz) (:id |_Q8bCAx9n7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535564693703) (:by |B1y7Rc-Zz) (:id |VzZwtZoO6O) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1535564698133) (:by |B1y7Rc-Zz) (:id |tJv55qj8Zk) (:text "|\"url(") (:type :leaf)
                                          |n $ {} (:at 1535564699933) (:by |B1y7Rc-Zz) (:id |nsZZQVVLv) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1535564708041) (:by |B1y7Rc-Zz) (:id |4lGaBpyWK2) (:text |:icon) (:type :leaf)
                                              |j $ {} (:at 1535564775736) (:by |B1y7Rc-Zz) (:id |sGz47mkdM) (:text |config/site) (:type :leaf)
                                          |r $ {} (:at 1535564696349) (:by |B1y7Rc-Zz) (:id |6N8V6yQKRt) (:text "|\")") (:type :leaf)
                                  |r $ {} (:at 1535564726919) (:by |B1y7Rc-Zz) (:id |5egZ0bR0I) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564728738) (:by |B1y7Rc-Zz) (:id |5egZ0bR0Ileaf) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1535565090611) (:by |B1y7Rc-Zz) (:id |ef8YU_bZh) (:text |128) (:type :leaf)
                                  |v $ {} (:at 1535564733832) (:by |B1y7Rc-Zz) (:id |K_yxszCR3z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564736588) (:by |B1y7Rc-Zz) (:id |K_yxszCR3zleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565093711) (:by |B1y7Rc-Zz) (:id |c5KZ_3dEVg) (:text |128) (:type :leaf)
                                  |x $ {} (:at 1535564741439) (:by |B1y7Rc-Zz) (:id |zidWccE-tZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564745512) (:by |B1y7Rc-Zz) (:id |zidWccE-tZleaf) (:text |:background-size) (:type :leaf)
                                      |j $ {} (:at 1535564749164) (:by |B1y7Rc-Zz) (:id |XvrhwspwQ) (:text |:contain) (:type :leaf)
                  |r $ {} (:at 1519314599832) (:by |root) (:id |HyRx3IDnPM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565436682) (:by |B1y7Rc-Zz) (:id |SJkll2LP2wM) (:text |div) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |BJgex3Lw3Pf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HkbeenIw3wf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |Syfgx28wnPf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Symgxn8v2vG) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |rkVlg3LDnDG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |SkHxlhUv2vz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Lgg3UwhPz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314599832) (:by |root) (:id |S1Pee2UD3wz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |HyOgl2IvnPM) (:text |:pointer) (:type :leaf)
                                  |r $ {} (:at 1535565239666) (:by |B1y7Rc-Zz) (:id |lWtf3D3AoP) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565243041) (:by |B1y7Rc-Zz) (:id |O56zdbQMDleaf) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1535565498969) (:by |B1y7Rc-Zz) (:id |3uSFrdhbOK) (:text "|\"32px") (:type :leaf)
                          |r $ {} (:at 1519314599832) (:by |root) (:id |SkKle2LPnvf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Hy9xl28D2PG) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584871334795) (:by |B1y7Rc-Zz) (:id |XUbtqCVDZv) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584871335398) (:by |B1y7Rc-Zz) (:id |LdFNplXRc) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584871335614) (:by |B1y7Rc-Zz) (:id |wTeBvUMQM9) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584871336535) (:by |B1y7Rc-Zz) (:id |WhyFNjJB_E) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584871337567) (:by |B1y7Rc-Zz) (:id |nbkgz6-ZOJ) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |S1mufs49z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584871334285) (:by |B1y7Rc-Zz) (:id |r1GZl2Lw2wG) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkmZln8v2wG) (:text |:effect/connect) (:type :leaf)
                                      |r $ {} (:at 1519314599832) (:by |root) (:id |HJNWe28w3wG) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1519314599832) (:by |root) (:id |r1r-lhLPnvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |r1Ube2LP2PM) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1562176386393) (:by |B1y7Rc-Zz) (:id |r1DWxhIP3wG) (:text "|\"No connection...") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ryuSziE9f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HkxN5IggCSZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BkZ4qUxgABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByzE9Lxe0BW) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1535565688657) (:by |B1y7Rc-Zz) (:id |Skm4cUlgRrZ) (:text |ui/font-fancy) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |ByvVqIxlCBW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkuNcLlxRrW) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1535565156897) (:by |B1y7Rc-Zz) (:id |SJYNcUxxASZ) (:text |24) (:type :leaf)
          |comp-status-color $ {} (:at 1524279216692) (:by |root) (:id |Sket2DQd3f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524279218316) (:by |root) (:id |S1ZK3DXd3G) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524279216692) (:by |root) (:id |SkzYhwm_3f) (:text |comp-status-color) (:type :leaf)
              |r $ {} (:at 1524279216692) (:by |root) (:id |SkmYnwXdnM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279220380) (:by |root) (:id |HkWi3Dmd2G) (:text |color) (:type :leaf)
              |v $ {} (:at 1524279221052) (:by |root) (:id |rJgTnPmu2G) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279221503) (:by |root) (:id |rJgTnPmu2Gleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1524279221753) (:by |root) (:id |rJlA3DXOhf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524279222145) (:by |root) (:id |ByA3Dm_2f) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1524279222434) (:by |root) (:id |r1ER2vQ_3G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524279223333) (:by |root) (:id |BJmAnP7_nz) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1533835122554) (:by |B1y7Rc-Zz) (:id |02sFGkmU4) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1533835132715) (:by |B1y7Rc-Zz) (:id |gdqZhoJ9D) (:text |let) (:type :leaf)
                              |L $ {} (:at 1533835132973) (:by |B1y7Rc-Zz) (:id |UKFzdk9D7f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533835133406) (:by |B1y7Rc-Zz) (:id |-QOGS9FksS) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835134066) (:by |B1y7Rc-Zz) (:id |VZJGRva7JQ) (:text |size) (:type :leaf)
                                      |j $ {} (:at 1533835156000) (:by |B1y7Rc-Zz) (:id |dH663gATGE) (:text |24) (:type :leaf)
                              |T $ {} (:at 1524279223555) (:by |root) (:id |SyeTD7dnz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279223903) (:by |root) (:id |H1S1TD7_2z) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524279224175) (:by |root) (:id |r1XlTDX_nf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279228958) (:by |root) (:id |BJMlTDQu3z) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1533835137743) (:by |B1y7Rc-Zz) (:id |HJIpvXuhG) (:text |size) (:type :leaf)
                                  |r $ {} (:at 1524279231457) (:by |root) (:id |rJfDavmu3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279232432) (:by |root) (:id |rJfDavmu3Gleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1533835138984) (:by |B1y7Rc-Zz) (:id |ByLuavmu3M) (:text |size) (:type :leaf)
                                  |v $ {} (:at 1524279233724) (:by |root) (:id |SycaPQO2f) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1524279242067) (:by |root) (:id |rJxCP7d2f) (:text |:position) (:type :leaf)
                                      |T $ {} (:at 1524279236076) (:by |root) (:id |SycaPQO2fleaf) (:text |:absolute) (:type :leaf)
                                  |x $ {} (:at 1524279242693) (:by |root) (:id |B1QAPmuhG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835259111) (:by |B1y7Rc-Zz) (:id |B1QAPmuhGleaf) (:text |:bottom) (:type :leaf)
                                      |j $ {} (:at 1524279295251) (:by |root) (:id |HyN0DXu3G) (:text |60) (:type :leaf)
                                  |y $ {} (:at 1524279244626) (:by |root) (:id |SyxSAwm_2z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835114388) (:by |B1y7Rc-Zz) (:id |SyxSAwm_2zleaf) (:text |:left) (:type :leaf)
                                      |j $ {} (:at 1524279252706) (:by |root) (:id |r1aCw7d2f) (:text |8) (:type :leaf)
                                  |yT $ {} (:at 1524279259074) (:by |root) (:id |S1eXJd7_3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279265891) (:by |root) (:id |S1eXJd7_3Gleaf) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1524279319762) (:by |root) (:id |S1WkQuQuhz) (:text |color) (:type :leaf)
                                  |yj $ {} (:at 1524279300007) (:by |root) (:id |B1e3Z_Xd2M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279306393) (:by |root) (:id |B1e3Z_Xd2Mleaf) (:text |:border-radius) (:type :leaf)
                                      |j $ {} (:at 1533835148624) (:by |B1y7Rc-Zz) (:id |Hy7f_md3z) (:text "|\"50%") (:type :leaf)
                                  |yr $ {} (:at 1524279322054) (:by |root) (:id |BkxzQO7_3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279323711) (:by |root) (:id |BkxzQO7_3Gleaf) (:text |:opacity) (:type :leaf)
                                      |j $ {} (:at 1533835161153) (:by |B1y7Rc-Zz) (:id |B1-VXdQ_3G) (:text |0.6) (:type :leaf)
                                  |yv $ {} (:at 1533835167955) (:by |B1y7Rc-Zz) (:id |VRmHRcaoLv) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835177358) (:by |B1y7Rc-Zz) (:id |VRmHRcaoLvleaf) (:text |:pointer-events) (:type :leaf)
                                      |j $ {} (:at 1533835178211) (:by |B1y7Rc-Zz) (:id |9jBAmSdCfv) (:text |:none) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |B15IxeRH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |SJxc8xl0HZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |SkZcLgxAB-) (:text |app.comp.container) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SkCq8lx0rb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkZlcUgg0B-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629485355369) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkHx5LxeRS-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |B1dg5UeeRSW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1B9Ueg0Sb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962164790) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkKcLxeRHW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |t $ {} (:at 1584877250857) (:by |B1y7Rc-Zz) (:id |H5Vz1GDH0u) (:text |>>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |w $ {} (:at 1586796471411) (:by |B1y7Rc-Zz) (:id |UVDRsRnxdR) (:text |list->) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1586796352217) (:by |B1y7Rc-Zz) (:id |VtRxfRi7lV) (:text |pre) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1FW9UegCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |S1T-5UggAB-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507816109737) (:by |root) (:id |Sklr2Mg6n-leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507816114106) (:by |root) (:id |rk-Y2zgTnW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |H1kGc8glRHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SJlM5UxgRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120275079) (:by |root) (:id |B1-f5UgeABb) (:text |app.comp.navigation) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkzM98gxRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Bymz5LglArW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkEzcLxgAB-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120276563) (:by |root) (:id |rkBfcLggCBb) (:text |comp-navigation) (:type :leaf)
                |yj $ {} (:at 1500541010211) (:by nil) (:id |HJ8M5UeeCS-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SyvGq8leRHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1_fq8geCHb) (:text |app.comp.profile) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryFz9LglCHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |r1qfqUlxASb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SysM5LegCBW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H12z9LxxCHW) (:text |comp-profile) (:type :leaf)
                |yr $ {} (:at 1500541010211) (:by nil) (:id |Bypz9LxxRSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HyAG9Uel0B-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |Hkk7qUgxAr-) (:text |app.comp.login) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJg798xxAHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJ-m9Ueg0SW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1zm5IxxCrb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1Qmq8gxCrW) (:text |comp-login) (:type :leaf)
                |yv $ {} (:at 1500541010211) (:by nil) (:id |SyE7qLleCHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJrm9LelAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529230826824) (:by |root) (:id |HkIQ9Iel0Hb) (:text |respo-message.comp.messages) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryv7cIgeCrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hk_7c8eg0rW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJY7cIlgRrW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529230829559) (:by |root) (:id |BJcQcUxxASW) (:text |comp-messages) (:type :leaf)
                |yx $ {} (:at 1507828725931) (:by |root) (:id |BklAlV7a2Z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507828726338) (:by |root) (:id |BklAlV7a2Zleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1543253312413) (:by |B1y7Rc-Zz) (:id |ry7AeNmT3b) (:text |cumulo-reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507828731528) (:by |root) (:id |H1bQW4762Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828731735) (:by |root) (:id |Sk-NbNmT3W) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507828731987) (:by |root) (:id |r1e4ZN7a3b) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507828733743) (:by |root) (:id |Bk44ZNXT2Z) (:text |comp-reel) (:type :leaf)
                |yy $ {} (:at 1521911479054) (:by |root) (:id |BygkTL-EqM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1521911480104) (:by |root) (:id |BygkTL-EqMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527789167264) (:by |root) (:id |SJMe6IZ45z) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1521911483589) (:by |root) (:id |B1GaI-V5M) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521911483778) (:by |root) (:id |BJb4T8ZNcM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1521911483935) (:by |root) (:id |HJeEpLbVqz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1521911485489) (:by |root) (:id |rJ4V6Lb49f) (:text |dev?) (:type :leaf)
                |yyj $ {} (:at 1529230793085) (:by |root) (:id |B1Z0rnQWm) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529230793389) (:by |root) (:id |B1Z0rnQWmleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529230796079) (:by |root) (:id |rJGbRHh7W7) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1529230796499) (:by |root) (:id |r1ZEAH2m-m) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529230797248) (:by |root) (:id |ByBAH37Zm) (:text |schema) (:type :leaf)
                |yyr $ {} (:at 1535564714854) (:by |B1y7Rc-Zz) (:id |62fxkh4Uk4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1535564716963) (:by |B1y7Rc-Zz) (:id |62fxkh4Uk4leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1535564718729) (:by |B1y7Rc-Zz) (:id |9xYrE_G3ic) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1535564719687) (:by |B1y7Rc-Zz) (:id |ccmXGZ69Z1) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1535564721387) (:by |B1y7Rc-Zz) (:id |agsiaMgXOQ) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1om9LgxCBZ) (:type :expr)
          :data $ {}
      |app.comp.login $ {}
        :defs $ {}
          |comp-login $ {} (:at 1500541010211) (:by nil) (:id |HkN1-cUxxRB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJBy-qUle0SW) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |S1LyWcUxe0rZ) (:text |comp-login) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkPy-qLxlRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Sy_yZ5LxlCBZ) (:text |states) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |ryK1bqLeg0rZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ry9JbqLlgRHb) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1j1WcUxxRSb) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584877226983) (:by |B1y7Rc-Zz) (:id |ghMesJLH51) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584877228943) (:by |B1y7Rc-Zz) (:id |ghMesJLH51leaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584877229143) (:by |B1y7Rc-Zz) (:id |dROAkbPV4) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584877231383) (:by |B1y7Rc-Zz) (:id |IsHz9EOQzW) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584877232198) (:by |B1y7Rc-Zz) (:id |SyMQv3vdDp) (:text |states) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HynkWcIee0Hb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkT1bqUxlASZ) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |Hy0yb98gxABW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkJxWc8lxCBW) (:text |or) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJllZ5Lle0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hy-eb9Uxx0HZ) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |S1GeZq8glCrW) (:text |states) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1Xeb9UleCrW) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1519368111046) (:by |root) (:id |HyxD3wVpvM) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1519368111912) (:by |root) (:id |rJZPnw4TvG) (:text |div) (:type :leaf)
                      |L $ {} (:at 1519368112156) (:by |root) (:id |SJXO3vNaDM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368113787) (:by |root) (:id |S1fd3wN6Dz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519368114295) (:by |root) (:id |SyGqhw46wG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519368116587) (:by |root) (:id |SJ-9hDETDf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519368119982) (:by |root) (:id |Byg6DV6wz) (:type :expr)
                                :data $ {}
                                  |5 $ {} (:at 1519368124581) (:by |root) (:id |H1lV6vNaPf) (:text |merge) (:type :leaf)
                                  |D $ {} (:at 1519368123630) (:by |root) (:id |BJxe6vNavM) (:text |ui/flex) (:type :leaf)
                                  |T $ {} (:at 1519368119197) (:by |root) (:id |rJlpnDVawM) (:text |ui/center) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |ryEx-5IxlRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJrgZ5Llg0Sb) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJIg-9Ule0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJvxZcIxlASZ) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJOg-5Igx0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1Fx-cUegRrb) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |ry5gWc8exRSZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkixZ9LxgRBZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJhlW5Ugl0rb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |r1Te-58xeAHb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |H1AgbqLleRrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1WZq8lgCS-) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkxZZ98xeCH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJWb-5UlxRrZ) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1M-WcUggRHZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hym-ZqLleAS-) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJNWb9UexCSZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |H1H-WqIle0rZ) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkU-bcUleASZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |S1wbZqLeeASW) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJObbc8leRS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJYWWcLxx0rW) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1562176475172) (:by |B1y7Rc-Zz) (:id |H15Wb9Ugg0r-) (:text "|\"Username") (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |SyoWb5UleCSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hy2bWqIlg0rW) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |HJpWZc8ggRH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkRZ-cIle0H-) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HyyM-9UglArZ) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1500541010211) (:by nil) (:id |rklGb9LxlRSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy-fW58glCSZ) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJGf-5Llx0SW) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJFis1lQM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302367311) (:by |root) (:id |H1_f-5UlxAr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |yEvhp4TxI8) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |90C3Zd01kB) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |_MLMryBx4t) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |lI4yDn4OsS) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584877198070) (:by |B1y7Rc-Zz) (:id |zmR6Y2sjVQ) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |nkgStmvKCp) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877199765) (:by |B1y7Rc-Zz) (:id |oBQ7fy17Fv) (:text |d!) (:type :leaf)
                                                      |b $ {} (:at 1584877203771) (:by |B1y7Rc-Zz) (:id |rW_MaPNyN) (:text |cursor) (:type :leaf)
                                                      |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |xAB-bHTuhy) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |XM_DjXkIgs) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |1l4fc9rIMc) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584877206280) (:by |B1y7Rc-Zz) (:id |Cbypyqxvlf) (:text |:username) (:type :leaf)
                                                          |v $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |Jf3juKbnck) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |iKFK-RoQ_N) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |cYyybTKpglu) (:text |e) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |rJ6MW9IxgAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1RzbqIxl0Sb) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |Sy17-5Iex0SW) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |B1gQWqUxe0rZ) (:text |8) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |rybQZcLeeABW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkfm-5IxgASW) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJX7ZqIeeCB-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk4mZ5IxgASW) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |rJHQb58xxRBW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJU7Zc8xlCSW) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyPX-qIxxRBb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ry_XZ5UglRrZ) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyK7bcIexCS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Bk9XZqLglArZ) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1562176476967) (:by |B1y7Rc-Zz) (:id |HkomWcUlxCBb) (:text "|\"Password") (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1hmb98glRSZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H16XZc8ee0rb) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1C7bcLel0BZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BykV-cLlgAHW) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rylNWcLelArZ) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1500541010211) (:by nil) (:id |rkb4Zq8le0BW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1zEb9Leg0H-) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |r174W9LllRB-) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |S1Znooygmf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302370752) (:by |root) (:id |SkYEbqUleRr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |GdTIxfXFjE) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |9LOE50XAuT) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |q3r0H2NjM4) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |KuSkVNnefS) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |NC0Q_vwu1X) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |iXablXrLXZ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |eIaCFnaFA4) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |SOT1h9thtC) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |_-GEQK_ydE) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |dCnOLnMpU_) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |hKa4xRNATt) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584877211233) (:by |B1y7Rc-Zz) (:id |1dQhyDb_IC) (:text |:password) (:type :leaf)
                                                          |v $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |iLh5hUVhXb) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |M-2xeMKIts) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |sLJyIcrO1HG) (:text |e) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |HkCEZcIegCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJyBZc8xgCSZ) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |BJlHZ98eg0SZ) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1WSZ58lxArb) (:text |8) (:type :leaf)
                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJfHW98egCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |ByXH-cLlx0S-) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1NBZ5Uxg0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyHSb58leCHb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJLSb9LxeASZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HkDrZqUlxRBb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1519368067092) (:by |root) (:id |SyGsFwVaDf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519368067501) (:by |root) (:id |HyWoFDNaDf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1519368135916) (:by |root) (:id |B1xl0wE6wf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519368141461) (:by |root) (:id |HyeAv4TPf) (:text |:text-align) (:type :leaf)
                                              |j $ {} (:at 1519368142240) (:by |root) (:id |B1I0wN6DG) (:text |:right) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BJtHWq8llRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367924372) (:by |root) (:id |HJ9BZcIeeCSb) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1sBZ98geRSW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkhSb5UleABb) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJTH-9UlgCHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ0SZ5Ilx0SW) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1562176479429) (:by |B1y7Rc-Zz) (:id |HJyIZqUleAH-) (:text "|\"Sign up") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJeIW5Ugx0HZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1bIZ9IxxAHb) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |SkfLZ5UglArZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1562176320143) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Syxb3iJg7G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302375364) (:by |root) (:id |SkMP-cIgl0rb) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJ7wZ9Lxx0S-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy4PbcUxgRHZ) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |ryBvWcUgeCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkLPZ9Lgx0rW) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryPv-5UgxAHZ) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Byuw-cLxgCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyFvW5LglAH-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1qDZ98geRSW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |HkjwbqLxlAHb) (:text |true) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |B13wW9IgxCrb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJTPZc8xxAHW) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryCvbqIxlCHZ) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |HyyO-q8glAS-) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |Skg_WqIxx0S-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367939048) (:by |root) (:id |HkWu-qIgeRrW) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HkfdZ9IelABZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |S17d-5UgxCr-) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |Sk4_bq8leCHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkB_W98xxABZ) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1562176481296) (:by |B1y7Rc-Zz) (:id |Sk8OW5LexRrW) (:text "|\"Log in") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HywdZ9LeeRHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ_OZc8lx0Bb) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1gEIv46Df) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1562176326573) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |HJlw3skxQM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302381488) (:by |root) (:id |BJYF-5Uxe0S-) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rk9F-cUex0H-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyoKb98elRr-) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1hYZcIxxASb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Skptbq8xeCBb) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJRFWc8eeRr-) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sk15Z9LleCS-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Bkl9-5IlxRB-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |SJWq-58llAHW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |rJfq-9Lge0B-) (:text |false) (:type :leaf)
          |initial-state $ {} (:at 1500541010211) (:by nil) (:id |BkQcW5IlxCrb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJN9bcIlg0rW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1B9-9Uel0Hb) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H1IqZcLgg0BW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hyvq-qIllRrZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |Hkd9b5UxgCBW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryF5b9IgxRB-) (:text |:username) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJq5-qUll0rb) (:text "|\"") (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJs5-qLel0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HyhcbqUggRHb) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |S16cbc8lx0Bb) (:text "|\"") (:type :leaf)
          |on-submit $ {} (:at 1500541010211) (:by nil) (:id |ryRox98ggCBW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |H1k3e58glCr-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SylnxqLgg0H-) (:text |on-submit) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Hk-2e9IglCrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkG2lqIxe0SW) (:text |username) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |r172xqLexCr-) (:text |password) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |SkEhlqIegRB-) (:text |signup?) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |SyB2gqIleArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJLhecIxg0rb) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJDne5LgxASZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |SJOnxqUxx0Sb) (:text |e) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BJK2xcLglCHZ) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |BJ93x98gg0rW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkshx5Lgx0HZ) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |By22eqIxxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkT3gqIlgArb) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |SJR3gqLegCr-) (:text |signup?) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |r11Te5UxgABZ) (:text |:user/sign-up) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |r1l6e5IgxCBb) (:text |:user/log-in) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |By-Tx58xgRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1GTxcIleAHb) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |Hy7ax5LexRHb) (:text |username) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |S1E6l9Lle0r-) (:text |password) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BySax58xgRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJ8Te9IgeABZ) (:text |.setItem) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkPpe9IglASZ) (:text |js/localStorage) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |ryO6eq8ex0r-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1Kal58gl0HZ) (:text |:storage-key) (:type :leaf)
                          |j $ {} (:at 1527788909281) (:by |root) (:id |ry5alqLglAr-) (:text |config/site) (:type :leaf)
                      |v $ {} (:at 1629486370405) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629486372610) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by nil) (:id |Hyj6eqIle0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkhaecLxlRBW) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |Hk6al98leAHZ) (:text |username) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |BJ0Te9LexCHZ) (:text |password) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |Hys_eqLgeAH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3Ox5LleArW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1510936619134) (:by |root) (:id |ry6_xqLxgCS-) (:text |app.comp.login) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SJ3YeqUlxABZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962172090) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |ry_sxqUeeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1527788911549) (:by |root) (:id |H1d_S2a1Q) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788911897) (:by |root) (:id |H1d_S2a1Qleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788913217) (:by |root) (:id |HJGd_rnakm) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788914516) (:by |root) (:id |S1IKdB3aJQ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788915188) (:by |root) (:id |rJouHhpkQ) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |Bkajg9LggCH-) (:type :expr)
          :data $ {}
      |app.comp.navigation $ {}
        :defs $ {}
          |comp-navigation $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-navigation) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJxuzcLle0S-) (:text |logged-in?) (:type :leaf)
                  |j $ {} (:at 1523120365880) (:by |root) (:id |r1W-lK_Lsz) (:text |count-members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |rkW_zqUxlCrZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJM_fc8elAHW) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1QdzqLge0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJNOG5LleABZ) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyBufq8elAHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkUOfqIxxRS-) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1vdGcUglRr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |H1u_z9Ixe0HZ) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |H1YdfcUxxCB-) (:text |ui/row-center) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkAw7iE5z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Byb2zcIlx0SW) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |Byz3z9UxgCBb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJQ2f5LglCSb) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SyEnGqLggRSZ) (:text |48) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |BJO3GqIex0Bb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJY3GqLxgAHb) (:text |:justify-content) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H1qhGq8leCSW) (:text |:space-between) (:type :leaf)
                                  |x $ {} (:at 1500541010211) (:by nil) (:id |S1s3M5LglCr-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sy3nMqLexRBW) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1562176392599) (:by |B1y7Rc-Zz) (:id |H1a2M5LleAH-) (:text "|\"0 16px") (:type :leaf)
                                  |y $ {} (:at 1500541010211) (:by nil) (:id |SJR2MqIlx0S-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkkpfcUxeCHb) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJeazq8llABZ) (:text |16) (:type :leaf)
                                  |yT $ {} (:at 1519314625999) (:by |root) (:id |Bkl9pLP2Pf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314630138) (:by |root) (:id |Bkl9pLP2Pfleaf) (:text |:border-bottom) (:type :leaf)
                                      |j $ {} (:at 1519314630743) (:by |root) (:id |rkgy08vnwf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519314632214) (:by |root) (:id |SJk0UDhDG) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1562176394986) (:by |B1y7Rc-Zz) (:id |rJEl08P3wf) (:text "|\"1px solid ") (:type :leaf)
                                          |r $ {} (:at 1519314635976) (:by |root) (:id |SyxNRUw2Pz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519314636519) (:by |root) (:id |BJVRIPnvM) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1519314637558) (:by |root) (:id |SklrAUwhvz) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1519314637788) (:by |root) (:id |HJeIRIwnPG) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1519314638678) (:by |root) (:id |ByMUC8vnPM) (:text |0) (:type :leaf)
                                              |x $ {} (:at 1519314643853) (:by |root) (:id |HkgD0IwhPM) (:text |0.1) (:type :leaf)
                                  |yj $ {} (:at 1519314651278) (:by |root) (:id |B1-mkPw2DG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314653842) (:by |root) (:id |B1-mkPw2DGleaf) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1519314661374) (:by |root) (:id |Bkg81wD2wz) (:text |ui/font-fancy) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |Bkj_M9LlxCHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |BJT_z5UgeRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BkxztoJgmz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584874408320) (:by |B1y7Rc-Zz) (:id |oZTdE7zVOY) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584874408856) (:by |B1y7Rc-Zz) (:id |LYV3Zaw3EI) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584874409139) (:by |B1y7Rc-Zz) (:id |qEgyNH8sU) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874409848) (:by |B1y7Rc-Zz) (:id |c0mdf8zHpa) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584874410391) (:by |B1y7Rc-Zz) (:id |xXV5jzhkvf) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |HyloNmsVcf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874407853) (:by |B1y7Rc-Zz) (:id |B1iaGcIexAHZ) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H126zqIglRB-) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |Sy6pz58llCrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJk0zq8xxCr-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |SyWCG5IlgAS-) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByIFGc8leCBW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |BywKzqUegArW) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1BEXo45f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HydPGq8xeRBb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1FvfqIxgAS-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJ9wM98lg0B-) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkjwMc8xl0Sb) (:text |:pointer) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJYKf5Leg0BW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rycKz9UxxABZ) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1536561771096) (:by |B1y7Rc-Zz) (:id |PJz4UIM8Cy) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536561772481) (:by |B1y7Rc-Zz) (:id |SJsFG98lxASW) (:text |:title) (:type :leaf)
                              |j $ {} (:at 1536561776186) (:by |B1y7Rc-Zz) (:id |IpyFO2t-G) (:text |config/site) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |SyTtGq8xeASb) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |H10FM9IeeRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ByyqzcUglRHZ) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkl5GcLglABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HybqMqUge0SW) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BkfcMq8ge0HZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkX5G5Ueg0rW) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |SybUXoVcf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SyYjz9UgxCrZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1ciG9UlxRrW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJjozqIgl0Sb) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1562176402113) (:by |B1y7Rc-Zz) (:id |BknsM58xxRrW) (:text "|\"pointer") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |SJeLFokgXG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1514302332444) (:by |root) (:id |Hkc5MqUgeCBb) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584874413029) (:by |B1y7Rc-Zz) (:id |R4jMOUYLbQ) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584874414283) (:by |B1y7Rc-Zz) (:id |OyIJ9gv-L) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584874414551) (:by |B1y7Rc-Zz) (:id |-pXUlxJAXK) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874414785) (:by |B1y7Rc-Zz) (:id |jGyJa2DhXe) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584874415332) (:by |B1y7Rc-Zz) (:id |APfcqGkz-j) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |SkwUXjN5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874412408) (:by |B1y7Rc-Zz) (:id |HyvLfcIelAHb) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1_8fqLxgRHZ) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |S1KIfc8xx0Sb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJqIM5LexCH-) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |SyjIfc8ggAHZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJ3LM5LgxABb) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |rJT8GqIgxRr-) (:text |:profile) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |Hkhcfq8gx0Sb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SJ69McLelASZ) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByysG5UgxABb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SkesM9IllRBZ) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |H1bjz98xxRSb) (:text |logged-in?) (:type :leaf)
                              |r $ {} (:at 1562176400207) (:by |B1y7Rc-Zz) (:id |Syziz98ggAS-) (:text "|\"Me") (:type :leaf)
                              |v $ {} (:at 1562176397757) (:by |B1y7Rc-Zz) (:id |Hk7izqLel0rb) (:text "|\"Guest") (:type :leaf)
                      |v $ {} (:at 1523120369216) (:by |root) (:id |BkeFgYdUif) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1523120369974) (:by |root) (:id |BkeFgYdUifleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1523120371053) (:by |root) (:id |S1lcgFd8if) (:text |8) (:type :leaf)
                          |r $ {} (:at 1523120371555) (:by |root) (:id |HyeogYO8jM) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1523120371997) (:by |root) (:id |Hk-2xtuUjf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1523120372630) (:by |root) (:id |Hk-2xtuUjfleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1523120373023) (:by |root) (:id |HkZpxFdIiM) (:text |count-members) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.navigation) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629485363909) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3Q4lXqy0N7) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {} (:at 1500541010211) (:by nil) (:id |HJHJG58xgASW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SyIkf9Uxx0Bb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1vkzqLgl0H-) (:text |comp-profile) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rkOyMqUexRSW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1KyfcUggCrb) (:text |user) (:type :leaf)
                  |j $ {} (:at 1524070827396) (:by |root) (:id |SJ-ntlBnM) (:text |members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |r19kz5Uxx0B-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyskGcUlxRSb) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJn1fqUgxABb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Skpkzc8xgAH-) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |Bk0yG5IleRHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkJeG5UxlASW) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314673230) (:by |root) (:id |rketgDP2wz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519314674218) (:by |root) (:id |rk5evv3Dz) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyleG58xgCBb) (:text |ui/flex) (:type :leaf)
                              |j $ {} (:at 1519314674864) (:by |root) (:id |BklixPv3Pz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314675207) (:by |root) (:id |S1jxDD2vf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314675496) (:by |root) (:id |HyVigvwnPG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314677667) (:by |root) (:id |SymslwPhwG) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1519314678341) (:by |root) (:id |HybAgPP2Pf) (:text |16) (:type :leaf)
                  |r $ {} (:at 1524070753023) (:by |root) (:id |HJbFwYlS2f) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070753742) (:by |root) (:id |SyfKPFxrhM) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070753977) (:by |root) (:id |BJG9DFxBnz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070754337) (:by |root) (:id |SkW9vFgS3f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070764197) (:by |root) (:id |HJ-VuKgBnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070764960) (:by |root) (:id |SkeV_KlBhM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070765167) (:by |root) (:id |BkNrOYlHnf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070765499) (:by |root) (:id |H17BOYeShG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524070765707) (:by |root) (:id |rylIuYgrhf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070768913) (:by |root) (:id |HJ8_txr3G) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1524070771373) (:by |root) (:id |HyzKOtlB3f) (:text |ui/font-fancy) (:type :leaf)
                                  |r $ {} (:at 1524070772863) (:by |root) (:id |By6_YeS3M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070774437) (:by |root) (:id |By6_YeS3Mleaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1524070786249) (:by |root) (:id |B1EROKlShG) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1524070778614) (:by |root) (:id |SJXKFeHnM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070781489) (:by |root) (:id |SJXKFeHnMleaf) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1524070782585) (:by |root) (:id |Bk8KtgS2M) (:text |100) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |r1bxMcIleASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkflGc8leCHW) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hk4xfc8ex0BZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Syrxf9Uex0S-) (:text |str) (:type :leaf)
                              |j $ {} (:at 1562176409054) (:by |B1y7Rc-Zz) (:id |Bk8ef9UggCH-) (:text "|\"Hello! ") (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |SyvgGc8ge0Hb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkdlMqIleCBZ) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryteG9Lgg0Bb) (:text |user) (:type :leaf)
                  |t $ {} (:at 1524070801446) (:by |root) (:id |rygF9Yer2G) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070803450) (:by |root) (:id |rygF9Yer2Gleaf) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1524070804372) (:by |root) (:id |BJh5txHhz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1524070805591) (:by |root) (:id |r1p5KgH2z) (:text |16) (:type :leaf)
                  |u $ {} (:at 1524070806586) (:by |root) (:id |H1kotlHnM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070807601) (:by |root) (:id |H1kotlHnMleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1524070807801) (:by |root) (:id |rJZeiKlS2M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070808172) (:by |root) (:id |BkeesteS2G) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070882494) (:by |root) (:id |B1Zrlcer3z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070886268) (:by |root) (:id |Sye519lHhM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070890021) (:by |root) (:id |rym0kqeB2z) (:text |ui/row) (:type :leaf)
                      |r $ {} (:at 1524070808914) (:by |root) (:id |HkgZjKlHhz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070810352) (:by |root) (:id |HkgZjKlHhzleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1524070906296) (:by |root) (:id |r1bfoFgr3z) (:text "|\"Members:") (:type :leaf)
                      |t $ {} (:at 1524070907095) (:by |root) (:id |B1e7-cgShM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070907693) (:by |root) (:id |B1e7-cgShMleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1524071002316) (:by |root) (:id |BJeVbqlS2G) (:text |8) (:type :leaf)
                          |r $ {} (:at 1524070908955) (:by |root) (:id |HkSWqxB3f) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070813822) (:by |root) (:id |Syl8oKlB3M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070815507) (:by |root) (:id |Syl8oKlB3Mleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1524070815884) (:by |root) (:id |ByeuiFeH2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070816388) (:by |root) (:id |SkujYgS3f) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524070882494) (:by |root) (:id |BkW5yqxShM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070886268) (:by |root) (:id |Sye519lHhM) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1524070890021) (:by |root) (:id |rym0kqeB2z) (:text |ui/row) (:type :leaf)
                          |r $ {} (:at 1524070817648) (:by |root) (:id |HkcsKlHhG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485406621) (:by |B1y7Rc-Zz) (:id |BJltsYgrhz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1524070823331) (:by |root) (:id |BJe2jFlShG) (:text |members) (:type :leaf)
                              |r $ {} (:at 1524070849620) (:by |root) (:id |BJ96txShz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485410164) (:by |B1y7Rc-Zz) (:id |HkhaKeSnz) (:text |.map-pair) (:type :leaf)
                                  |j $ {} (:at 1524070854323) (:by |root) (:id |Bk-0aYxSnM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070854836) (:by |root) (:id |ByRaYxH3M) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1524070855268) (:by |root) (:id |By-JCtgrnM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485414491) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1629485419439) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1524070862172) (:by |root) (:id |SyW8CFeS3z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070862624) (:by |root) (:id |SyW8CFeS3zleaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1524070863576) (:by |root) (:id |SyWPAFgBhM) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1524070863870) (:by |root) (:id |SyZuAKeB2z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070935603) (:by |root) (:id |SJedAtxShG) (:text |div) (:type :leaf)
                                              |b $ {} (:at 1524070935915) (:by |root) (:id |H1-eQ9eB3M) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070936321) (:by |root) (:id |ByegX5er2z) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1524070941378) (:by |root) (:id |r1MSX5xrhG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070945311) (:by |root) (:id |rJ-HX9eB3z) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1524070945552) (:by |root) (:id |S15m5eHnM) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070951279) (:by |root) (:id |BkmFQ5eB2G) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1524070952343) (:by |root) (:id |By-xE9xShf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070953379) (:by |root) (:id |BybJE5xB2f) (:text |:padding) (:type :leaf)
                                                              |j $ {} (:at 1524070959440) (:by |root) (:id |BJUbV9xShG) (:text "|\"0 8px") (:type :leaf)
                                                          |r $ {} (:at 1524070965836) (:by |root) (:id |SyA4qlSnM) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070967712) (:by |root) (:id |SyA4qlSnMleaf) (:text |:border) (:type :leaf)
                                                              |j $ {} (:at 1524070968157) (:by |root) (:id |rkbxS9lr2f) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1524070968711) (:by |root) (:id |ByllrcxH3M) (:text |str) (:type :leaf)
                                                                  |j $ {} (:at 1524070971580) (:by |root) (:id |SJ-bSclH2G) (:text "|\"1px solid ") (:type :leaf)
                                                                  |r $ {} (:at 1524070972774) (:by |root) (:id |BJlSr5gB3M) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1524070973331) (:by |root) (:id |HJHrcxBnz) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1524070973606) (:by |root) (:id |S14rr9gH3z) (:text |0) (:type :leaf)
                                                                      |r $ {} (:at 1524070973793) (:by |root) (:id |BkxUr5gB3f) (:text |0) (:type :leaf)
                                                                      |v $ {} (:at 1524071006553) (:by |root) (:id |r1MLr5eBhM) (:text |80) (:type :leaf)
                                                          |v $ {} (:at 1524070980253) (:by |root) (:id |ryz3rcxBhG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070984655) (:by |root) (:id |ryz3rcxBhGleaf) (:text |:border-radius) (:type :leaf)
                                                              |j $ {} (:at 1524070992141) (:by |root) (:id |SkWZI5lrhz) (:text "|\"16px") (:type :leaf)
                                                          |x $ {} (:at 1524070994599) (:by |root) (:id |HysU5lHnf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070996433) (:by |root) (:id |HysU5lHnfleaf) (:text |:margin) (:type :leaf)
                                                              |j $ {} (:at 1524071016063) (:by |root) (:id |BkaI5gS3f) (:text "|\"0 4px") (:type :leaf)
                                              |j $ {} (:at 1524070937486) (:by |root) (:id |ryM-XqxHnz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1524070939626) (:by |root) (:id |BJGm9xB3M) (:text |<>) (:type :leaf)
                                                  |T $ {} (:at 1524070866665) (:by |root) (:id |HyzFRtlBnz) (:text |username) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BkseG9Lxx0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkhlz5IglRr-) (:text |=<) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by |root) (:id |rkAefcIlgRrZ) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070799028) (:by |root) (:id |S1JuFlHhM) (:text |48) (:type :leaf)
                  |x $ {} (:at 1524070749088) (:by |root) (:id |S1rwteS2z) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070749878) (:by |root) (:id |BJlrDYxBhz) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070750119) (:by |root) (:id |H17IvYlrnf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070750478) (:by |root) (:id |HkMUvFeS2f) (:text |{}) (:type :leaf)
                      |P $ {} (:at 1536750075330) (:by |B1y7Rc-Zz) (:id |uOPXafTZdi) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536750077847) (:by |B1y7Rc-Zz) (:id |uOPXafTZdileaf) (:text |button) (:type :leaf)
                          |j $ {} (:at 1536750078116) (:by |B1y7Rc-Zz) (:id |54E1NydiPF) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536750084550) (:by |B1y7Rc-Zz) (:id |8ZynejYcOp) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1536750084800) (:by |B1y7Rc-Zz) (:id |WE9kL26nME) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536750086408) (:by |B1y7Rc-Zz) (:id |FinL-2NIc_) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1536750086649) (:by |B1y7Rc-Zz) (:id |KHJ6pZvdN) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536750087218) (:by |B1y7Rc-Zz) (:id |Dzcqtrid-4) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1536750089353) (:by |B1y7Rc-Zz) (:id |HDKedQiLPL) (:text |ui/button) (:type :leaf)
                              |r $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |9KqNbw7POH) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Qzbn-LQgag) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Ap2ncP6Z17) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |yJAC369k1J) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |-EI5sPgdhJ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |0KsZOYBtdZ) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1536750196752) (:by |B1y7Rc-Zz) (:id |IjGXOjvOaT) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1536750149343) (:by |B1y7Rc-Zz) (:id |c1hzphaVoc) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1562176422166) (:by |B1y7Rc-Zz) (:id |Ns2_BydKNA) (:text |js/location.replace) (:type :leaf)
                                          |r $ {} (:at 1536750157447) (:by |B1y7Rc-Zz) (:id |YmX5Wzb78T) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536750157996) (:by |B1y7Rc-Zz) (:id |mbcbMGu8wf) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1536947568308) (:by |root) (:id |DbCo3fk6H) (:text |js/location.origin) (:type :leaf)
                                              |r $ {} (:at 1536947560142) (:by |root) (:id |JRYzWyR7y2) (:text "|\"?time=") (:type :leaf)
                                              |v $ {} (:at 1536750183293) (:by |B1y7Rc-Zz) (:id |oPd5dUr6pZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1536750183917) (:by |B1y7Rc-Zz) (:id |XjR6j7fCrg) (:text |.now) (:type :leaf)
                                                  |j $ {} (:at 1536750185350) (:by |B1y7Rc-Zz) (:id |lpXN4rI60T) (:text |js/Date) (:type :leaf)
                          |r $ {} (:at 1536750090761) (:by |B1y7Rc-Zz) (:id |wKN1OxLol) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536750091205) (:by |B1y7Rc-Zz) (:id |wKN1OxLolleaf) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1536750096637) (:by |B1y7Rc-Zz) (:id |El2yUaE7P) (:text "|\"Refresh") (:type :leaf)
                      |R $ {} (:at 1536750643074) (:by |B1y7Rc-Zz) (:id |f9W9pIt6P) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536750643562) (:by |B1y7Rc-Zz) (:id |f9W9pIt6Pleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1536750644286) (:by |B1y7Rc-Zz) (:id |yAaDQ5KQcm) (:text |8) (:type :leaf)
                          |r $ {} (:at 1536750644793) (:by |B1y7Rc-Zz) (:id |RMJuWthIzE) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |SyJ-M5IggAHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529343433304) (:by |root) (:id |S1gbfqIgl0Sb) (:text |button) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyWWz9UeeArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkMWGqUxlRHb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |SkmbM98xl0SZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1NbM9UllABW) (:text |:style) (:type :leaf)
                                  |b $ {} (:at 1529343525553) (:by |root) (:id |rkCm0Dr-Q) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1529343526544) (:by |root) (:id |rkxAm0PBbm) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1529343448522) (:by |root) (:id |B1x0CTPS-m) (:text |ui/button) (:type :leaf)
                                      |j $ {} (:at 1529343455186) (:by |root) (:id |B1lNRPS-m) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1529343455629) (:by |root) (:id |SkxvJAvS-m) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1529343457115) (:by |root) (:id |SkWFyCDHZ7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1529343457898) (:by |root) (:id |SkeYyCDBWX) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1529343458855) (:by |root) (:id |S1mckRvHWX) (:text |:red) (:type :leaf)
                                          |r $ {} (:at 1529343459158) (:by |root) (:id |rkXiyCPHbX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1529343463728) (:by |root) (:id |rkXiyCPHbXleaf) (:text |:border-color) (:type :leaf)
                                              |j $ {} (:at 1529343464475) (:by |root) (:id |rkZeeAwSbX) (:text |:red) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |B1edqskgQf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1514302350497) (:by |root) (:id |r1i-McLxeArW) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJxrymsN5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521951456454) (:by |root) (:id |SkICb9UgeRSb) (:text |fn) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HJ_C-q8llCSW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkK0W98geAHb) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |By5CZ5Uxx0BZ) (:text |dispatch!) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Sks0Z9Ulg0rW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkhRb5LllArW) (:text |dispatch!) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |BJaAW9UelCHb) (:text |:user/log-out) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by |root) (:id |SyARWqLegRrW) (:text |nil) (:type :leaf)
                                      |x $ {} (:at 1500541010211) (:by nil) (:id |HkJJfc8glCHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJlJGqIggAHb) (:text |.removeItem) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |HkWyM9Uxx0BZ) (:text |js/localStorage) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJGJG5UxgCBb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |SymJG5IelASb) (:text |:storage-key) (:type :leaf)
                                              |j $ {} (:at 1527788933957) (:by |root) (:id |HyNJG5LegRrb) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hy6bM58lg0r-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyC-MqUgeRHW) (:text |<>) (:type :leaf)
                              |r $ {} (:at 1536750140051) (:by |B1y7Rc-Zz) (:id |BylzzcUllAHZ) (:text "|\"Log out") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |ByC9-5Lee0rW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1s-qLxlAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |ryljZqUglCrZ) (:text |app.comp.profile) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |HkCj-9IxgABb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |SyknZqIgxCBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |Bkx3W5LxeRHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |rkWhZ9Lgg0HZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629485425176) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1X3W58egRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |BJVhZcUelRrZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HJHhWqLleAS-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |Sk8h-5LgxRBW) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |Byw3Z9IexAB-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S1OhbcUeg0SW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1F2b98glCBb) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJq3Zc8xxCBb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |HyjhZ9UeeRrb) (:text |schema) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |HJ33Z9Ill0rW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bkp3ZcLxeABW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547419785) (:by |root) (:id |H1R2Z58eeCBZ) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HyyaWqUee0rZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |SklpZqLgg0HZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |HyxIgc3JG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkNib9LxeAH-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962184094) (:by |root) (:id |BJHi-5UxxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |B1LsWcIeeArW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HkvjWqUlgRS-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SkuiZ5Lgl0BZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |B1FjW9UegCSW) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1524070875244) (:by |root) (:id |BkllkcgSnz) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |ryqiZqUel0B-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SkooW9UgxRrb) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJ2obqIlgCB-) (:text |div) (:type :leaf)
                        |y $ {} (:at 1529343437918) (:by |root) (:id |HyaiWqIgxCrZ) (:text |button) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |ryTT-cLgxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S1RTZ9Uxl0Sb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJJRW5UegRrW) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1gAZc8llRrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hy-0b58xxCrW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ryMAZ58eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1XCWcIxlRS-) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1527788936196) (:by |root) (:id |Skll5r3p1m) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788936499) (:by |root) (:id |Skll5r3p1mleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788937835) (:by |root) (:id |rk-cB3pyQ) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788938747) (:by |root) (:id |H14fqShakX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788939786) (:by |root) (:id |B1zm9B3T1Q) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |rJ4RbcUxeCBZ) (:type :expr)
          :data $ {}
      |app.config $ {}
        :defs $ {}
          |cdn? $ {} (:at 1544871465838) (:by |B1y7Rc-Zz) (:id |TaKs1MIIju) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544871466769) (:by |B1y7Rc-Zz) (:id |shYnlX_lrk) (:text |def) (:type :leaf)
              |j $ {} (:at 1544871465838) (:by |B1y7Rc-Zz) (:id |zoTz84Mu8T) (:text |cdn?) (:type :leaf)
              |r $ {} (:at 1544873120504) (:by |B1y7Rc-Zz) (:id |6f9awootHH) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1544873121801) (:by |B1y7Rc-Zz) (:id |O2nbPxFsI) (:text |cond) (:type :leaf)
                  |T $ {} (:at 1544872158892) (:by |B1y7Rc-Zz) (:id |J9cNbOFx8) (:type :expr)
                    :data $ {}
                      |L $ {} (:at 1544872160137) (:by |B1y7Rc-Zz) (:id |B5f7dVJWeL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1544872212424) (:by |B1y7Rc-Zz) (:id |Cq0N4O7hx) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1544872166741) (:by |B1y7Rc-Zz) (:id |ht2DYP7TZ) (:text |js/window) (:type :leaf)
                      |P $ {} (:at 1544872201326) (:by |B1y7Rc-Zz) (:id |7eGu5I_wc6) (:text |false) (:type :leaf)
                  |j $ {} (:at 1544872158892) (:by |B1y7Rc-Zz) (:id |sdvLYknV1) (:type :expr)
                    :data $ {}
                      |L $ {} (:at 1544872160137) (:by |B1y7Rc-Zz) (:id |B5f7dVJWeL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1544872212424) (:by |B1y7Rc-Zz) (:id |Cq0N4O7hx) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1544873128227) (:by |B1y7Rc-Zz) (:id |ht2DYP7TZ) (:text |js/process) (:type :leaf)
                      |P $ {} (:at 1544873129881) (:by |B1y7Rc-Zz) (:id |nc7NZRnVMY) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1544873129881) (:by |B1y7Rc-Zz) (:id |qUPP-TBJLO) (:text |=) (:type :leaf)
                          |j $ {} (:at 1544873129881) (:by |B1y7Rc-Zz) (:id |JBt27H_Q-a) (:text "|\"true") (:type :leaf)
                          |r $ {} (:at 1544873129881) (:by |B1y7Rc-Zz) (:id |laeu8BfRGm) (:text |js/process.env.cdn) (:type :leaf)
                  |r $ {} (:at 1544873134102) (:by |B1y7Rc-Zz) (:id |oux8SpOetu) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544873136534) (:by |B1y7Rc-Zz) (:id |oux8SpOetuleaf) (:text |:else) (:type :leaf)
                      |j $ {} (:at 1544873137374) (:by |B1y7Rc-Zz) (:id |dXlsGzYeGt) (:text |false) (:type :leaf)
          |dev? $ {} (:at 1521911283590) (:by |root) (:id |rJe2eIb4qG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521911286581) (:by |root) (:id |SkZ2x8-45f) (:text |def) (:type :leaf)
              |j $ {} (:at 1521911283590) (:by |root) (:id |SJzhl8WEcf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1629485839098) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629485839245) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                  |j $ {} (:at 1629485841312) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                  |r $ {} (:at 1629485841681) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485843567) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                      |j $ {} (:at 1629485845420) (:by |B1y7Rc-Zz) (:text "|\"mode") (:type :leaf)
                      |n $ {} (:at 1658732278622) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1500541255553) (:by nil) (:id |ryy9lUWg0BW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Syx9g8-l0B-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hy-9x8beASZ) (:text |site) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByG9eLZlAB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1Q5x8Zl0Hb) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |H1w9gIblRHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rydqx8blRHW) (:text |:port) (:type :leaf)
                      |j $ {} (:at 1586795293170) (:by |B1y7Rc-Zz) (:id |rJF9g8-gCHZ) (:text |11021) (:type :leaf)
                  |t $ {} (:at 1527867502467) (:by |root) (:id |BkeUud1ye7) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867504737) (:by |root) (:id |BkeUud1ye7leaf) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1586795300396) (:by |B1y7Rc-Zz) (:id |H1zKduykx7) (:text "|\"Display Latency") (:type :leaf)
                  |u $ {} (:at 1527867511986) (:by |root) (:id |r1gxKOykeQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867512819) (:by |root) (:id |r1gxKOykeQleaf) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1527867517723) (:by |root) (:id |B1SY_yJx7) (:text "|\"http://cdn.tiye.me/logo/cumulo.png") (:type :leaf)
                  |yr $ {} (:at 1535565550489) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcw) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565552318) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcwleaf) (:text |:theme) (:type :leaf)
                      |j $ {} (:at 1535565554474) (:by |B1y7Rc-Zz) (:id |iZkrTQHtV) (:text "|\"#eeeeff") (:type :leaf)
                  |yv $ {} (:at 1544855275779) (:by |B1y7Rc-Zz) (:id |p3x2NvQE8A) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544855275779) (:by |B1y7Rc-Zz) (:id |uZPBtv98eu) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1586795308229) (:by |B1y7Rc-Zz) (:id |ADQo0wpedu) (:text "|\"display-latency") (:type :leaf)
                  |yx $ {} (:at 1544855286260) (:by |B1y7Rc-Zz) (:id |FdTJPwf8BB) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544855289453) (:by |B1y7Rc-Zz) (:id |FdTJPwf8BBleaf) (:text |:storage-file) (:type :leaf)
                      |j $ {} (:at 1645355576260) (:by |B1y7Rc-Zz) (:id |LoPUWHpqD7) (:text "|\"storage.cirru") (:type :leaf)
        :ns $ {} (:at 1527788708227) (:by |root) (:id |HJghs43Tk7) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788708227) (:by |root) (:id |HJb3jEn6kX) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788708227) (:by |root) (:id |BJfhoN3pym) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788708227) (:by |root) (:id |ByX2iV3p1m) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |database $ {} (:at 1500541255553) (:by nil) (:id |S1c5lLblCBZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BkjcxUbgAH-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ryhqlIZxRSb) (:text |database) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |S169e8WeAH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJCqxL-gASW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |SJJolIbeArb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkgjlUZxArb) (:text |:sessions) (:type :leaf)
                      |j $ {} (:at 1538886498428) (:by |root) (:id |RC6TbFtiBd) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886499001) (:by |root) (:id |u-mi7TeZu) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886500387) (:by |root) (:id |DUAFs31KF4) (:text |session) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |H1WsxIbeCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |r1GseIWx0S-) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Symjg8bg0BZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ4ix8beAB-) (:text |:users) (:type :leaf)
                      |j $ {} (:at 1538886501540) (:by |root) (:id |Rx2kJHudR) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886502106) (:by |root) (:id |-QMTWQpKkD) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886502625) (:by |root) (:id |2DKXhsjt7P) (:text |user) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |r1BieLbe0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |BJUjl8bg0SW) (:text |{}) (:type :leaf)
          |router $ {} (:at 1500541255553) (:by nil) (:id |BJaugUbeABb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJR_lI-xRBZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |BJyFl8-l0B-) (:text |router) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |HyeKlU-gCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJbYl8bxCr-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyzFe8blRHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJQtlI-x0rW) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Bk4teL-lRS-) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |SyrYlL-lRBZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1IYxUWlCBW) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |SJPKlIbeCBZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |Hy_tgU-eAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rJtFx8ZeRr-) (:text |:data) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |SJ9KlUZeCSb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |HJstxIbeAS-) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |Sk2YxIbg0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1aYe8Wg0rW) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1CteIWlCrZ) (:text |nil) (:type :leaf)
          |session $ {} (:at 1500541255553) (:by nil) (:id |HyiseLZlCB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |S1hseLZlCBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |rJpslIZxAHW) (:text |session) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkCilU-eCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B11neI-gAH-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |Byx2e8-e0rZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rybnxUWe0BZ) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryf2xIbxAHZ) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1m2eIbxAHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S143xIblCrZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |S1ShgL-l0rZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |HJU2gU-lRrb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyPheIZxCSZ) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1_hx8ZeRrW) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |rkthlU-gCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HycngIbeCrb) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1538886507054) (:by |root) (:id |6GeGDz-Mrh) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886507646) (:by |root) (:id |sM5ZFH9Ojs) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886508475) (:by |root) (:id |Ot9nzPxAuB) (:text |router) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |HyjhgL-xArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy23gUZgRH-) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |H1T2eUZeAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1C3lUWgCHb) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJkalLZxArW) (:text |:home) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HyxTeL-gRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1baxLZeCr-) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |SyGpe8WgAHZ) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |rk7TlUWl0SW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bk4pe8ZgCBZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJB6l8-g0H-) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |SyL6eIbgRr-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529230759501) (:by |root) (:id |HyPTeIZx0SZ) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1529230760396) (:by |root) (:id |HJGlhSh7Z7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529230760716) (:by |root) (:id |SyWg2HnQZQ) (:text |{}) (:type :leaf)
          |user $ {} (:at 1500541255553) (:by nil) (:id |BJKwxIbx0rZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy9weU-x0SW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1jDx8bx0SZ) (:text |user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkhPxUWx0r-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkpPl8ZlRrW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HkAPxIZxRB-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |ryJul8beCrb) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJlOxIWgRBW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |HkbdlLZlRSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |r1M_gIWxCSZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rk7_eIbxRB-) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |B14ug8bg0rb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HySOgLWeASW) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ByIue8Ze0B-) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |H1PulIbx0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyudlUWeCBW) (:text |:avatar) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rJYdlLbe0BW) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |HJcOxIbgAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1jOeUbxArW) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hynug8bxCSZ) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |B1Swe8bxAr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |Bk8PgIbeCr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |SyDDxIWeRrb) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SJuPg8bxRH-) (:type :expr)
          :data $ {}
      |app.server $ {}
        :defs $ {}
          |*client-caches $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
              |r $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
          |*initial-db $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |*initial-db) (:type :leaf)
              |h $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                      |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |w-log) (:type :leaf)
                          |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |h $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data") (:type :leaf)
                      |h $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                          |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
                          |h $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |read-file) (:type :leaf)
                                  |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |l $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |b $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text "|\"Found no data") (:type :leaf)
                      |h $ {} (:at 1645355012196) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
          |*reader-reel $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
              |r $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
          |*reel $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                  |r $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |:base) (:type :leaf)
                          |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |r $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                          |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
          |dispatch! $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
              |l $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |generate-id!) (:type :leaf)
                      |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                          |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                              |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |.timestamp) (:type :leaf)
                  |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!") (:type :leaf)
                          |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |l $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                          |o $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |l $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |:effect/persist) (:type :leaf)
                      |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
                      |l $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                          |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                              |b $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                              |h $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                              |l $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |o $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |q $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |s $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |t $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                              |u $ {} (:at 1645355033053) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
          |get-backup-path! $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
              |h $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |.extract) (:type :leaf)
                              |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |h $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
                      |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |h $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text "|\"backups") (:type :leaf)
                      |l $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |:month) (:type :leaf)
                              |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                      |o $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |:day) (:type :leaf)
                              |b $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |h $ {} (:at 1645355049943) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru") (:type :leaf)
          |main! $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |l $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |o $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                          |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                              |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text "|\"port") (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |parse-float) (:type :leaf)
                                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |l $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |l $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:") (:type :leaf)
                          |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |q $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading") (:type :leaf)
                  |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |identity) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
              |s $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                  |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |t $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |600000) (:type :leaf)
                  |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |h $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |u $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |on-control-c) (:type :leaf)
                  |b $ {} (:at 1645355074598) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
          |on-exit! $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
              |h $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |o $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                  |b $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |h $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text "|\"exit code is...") (:type :leaf)
              |q $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |quit!) (:type :leaf)
                  |b $ {} (:at 1645355082096) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
          |persist-db! $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |h $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                          |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                                  |h $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |l $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                          |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                      |h $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                          |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
                  |h $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                      |h $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                  |l $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |b $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                      |h $ {} (:at 1645355163327) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
          |reload! $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |h $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text "|\"Code updated..") (:type :leaf)
              |o $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                  |h $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |raise) (:type :leaf)
                      |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode") (:type :leaf)
              |q $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
              |s $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                  |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                  |h $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                      |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                      |h $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |l $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
              |t $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                  |b $ {} (:at 1645355092117) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |render-loop! $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |h $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |b $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |b $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |identical?) (:type :leaf)
                          |b $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
                          |h $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |h $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                      |b $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
                      |h $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |l $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                      |b $ {} (:at 1645355106761) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |run-server! $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
              |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |l $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                      |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1686759865646) (:by |B1y7Rc-Zz) (:text |tag-match) (:type :leaf)
                          |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:connect) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:session/connect) (:type :leaf)
                                      |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |l $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text "|\"New client.") (:type :leaf)
                          |l $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:message) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                          |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                                  |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text "|\"unknown action:") (:type :leaf)
                                          |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |l $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                          |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |l $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |o $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:disconnect) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text "|\"Client closed!") (:type :leaf)
                                  |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |:session/disconnect) (:type :leaf)
                                      |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |l $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |q $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |_) (:type :leaf)
                              |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |b $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text "|\"unknown data:") (:type :leaf)
                                  |h $ {} (:at 1645355118464) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |storage-file $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
              |h $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |empty?) (:type :leaf)
                      |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                  |h $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |h $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |l $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |h $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text "|\"/") (:type :leaf)
                      |l $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |b $ {} (:at 1645355126212) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
          |sync-clients! $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
              |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
              |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                          |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                          |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |@*client-caches) (:type :leaf)
                                          |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |o $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                              |q $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                      |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:key) (:type :leaf)
                                              |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                          |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                              |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text "|\"Changes for") (:type :leaf)
                                  |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                                  |o $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |q $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                          |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                                          |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                                              |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                                      |b $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
                                      |h $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |l $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |o $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
              |o $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355138530) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
        :ns $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1629486040069) (:by |B1y7Rc-Zz) (:text |app.server) (:type :leaf)
            |r $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |app.updater) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                |l $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                        |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                        |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                |o $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |q $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |app.twig.container) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                |s $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |recollect.diff) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                |t $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |wss.core) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                        |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                        |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                |u $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |recollect.twig) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
                        |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
                |v $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |app.$meta) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                |w $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |calcit.std.fs) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                        |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                |x $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |calcit.std.time) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                |y $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
                        |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                |z $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |calcit.std.path) (:type :leaf)
                    |b $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355146919) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
      |app.twig.container $ {}
        :defs $ {}
          |twig-container $ {} (:at 1500541255553) (:by nil) (:id |ByY-eUZeAr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629486082938) (:by |B1y7Rc-Zz) (:id |BJ5bxLZlRBZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkibe8Wl0S-) (:text |twig-container) (:type :leaf)
              |n $ {} (:at 1500541255553) (:by nil) (:id |Sk-PI_qp1z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hkzzg8WlRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |ByXzxL-lCH-) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507828952210) (:by |root) (:id |rklw6NmanW) (:text |records) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ryl38_qaJf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |ByHzl8bgCSZ) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyUflIWgRrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HywGl8-gCHW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |H1_MlIbg0SW) (:text |logged-in?) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |B1FGxLWeRHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ry5fe8ZlRS-) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |BkiGlU-e0B-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJnGeLZlAHb) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJTMlI-eAB-) (:text |session) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |rJ0GgLZlCS-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BkkQeLZlCHW) (:text |router) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |SkemlIWxRBb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |SJWmlLWeRHZ) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJzXlLWxAHZ) (:text |session) (:type :leaf)
                      |r $ {} (:at 1507830626848) (:by |root) (:id |ryowoQp2W) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830630278) (:by |root) (:id |ryowoQp2Wleaf) (:text |base-data) (:type :leaf)
                          |j $ {} (:at 1507830631302) (:by |root) (:id |r1lyujmp3b) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830631896) (:by |root) (:id |By1djQTnb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507830632113) (:by |root) (:id |ryGxdimT2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830641027) (:by |root) (:id |Sy-guiXp2b) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1507830639219) (:by |root) (:id |ByBusQ6hW) (:text |logged-in?) (:type :leaf)
                              |n $ {} (:at 1507830674443) (:by |root) (:id |ByecqsQ6nW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830677551) (:by |root) (:id |ByecqsQ6nWleaf) (:text |:session) (:type :leaf)
                                  |j $ {} (:at 1507830679311) (:by |root) (:id |BJlA5oXpn-) (:text |session) (:type :leaf)
                              |v $ {} (:at 1507830649968) (:by |root) (:id |SyxMtsm62Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830655148) (:by |root) (:id |SyxMtsm62Zleaf) (:text |:reel-length) (:type :leaf)
                                  |j $ {} (:at 1507830655987) (:by |root) (:id |B1xuKj7p3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830657551) (:by |root) (:id |S1dKjma2Z) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1507830658789) (:by |root) (:id |HkgcFsXT3b) (:text |records) (:type :leaf)
                  |r $ {} (:at 1507830661017) (:by |root) (:id |BkxpKj76h-) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507830661999) (:by |root) (:id |H1W6KoQ6hZ) (:text |merge) (:type :leaf)
                      |L $ {} (:at 1507830664014) (:by |root) (:id |rJVCFjmp2b) (:text |base-data) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HJQmlU-e0rW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |rJVmgLZlAr-) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |r1S7gUZlArb) (:text |logged-in?) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by nil) (:id |HJUQxIbx0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |rJPQl8ZgCHb) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |B107eU-lCHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hy1VxUbeCS-) (:text |:user) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by nil) (:id |HJlNxUbx0r-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyZVxIZeCS-) (:text |twig-user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyG4lIZlRHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |HkXVeL-l0Sb) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJ4Nx8WeCrb) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1500541255553) (:by nil) (:id |HkrVgLZg0B-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541255553) (:by |root) (:id |ByIEeLbxCHb) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1500541255553) (:by |root) (:id |H1v4xIWxArZ) (:text |:users) (:type :leaf)
                                              |r $ {} (:at 1500541255553) (:by nil) (:id |HJ_VxL-xRr-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJYNgUbgCBb) (:text |:user-id) (:type :leaf)
                                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryqNeLZeCHb) (:text |session) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |SJsEe8ZgCBZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJ2EeUWe0SZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1524070628251) (:by |root) (:id |ryh1FgBhM) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1524070634499) (:by |root) (:id |rJbWgKgBhz) (:text |assoc) (:type :leaf)
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJaEl8ZxCS-) (:text |router) (:type :leaf)
                                      |j $ {} (:at 1524070635855) (:by |root) (:id |rygQeYlH3G) (:text |:data) (:type :leaf)
                                      |r $ {} (:at 1524070636122) (:by |root) (:id |r1VNlFlHnz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629486127727) (:by |B1y7Rc-Zz) (:id |BJ74eFlB2z) (:text |case-default) (:type :leaf)
                                          |j $ {} (:at 1524070641804) (:by |root) (:id |HybcgKxB2G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070642493) (:by |root) (:id |S1g9etlS2M) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1524070643351) (:by |root) (:id |HJilKgSnf) (:text |router) (:type :leaf)
                                          |l $ {} (:at 1629486128418) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629486128418) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |n $ {} (:at 1525108994160) (:by |root) (:id |BJxq-bAE6z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525108995413) (:by |root) (:id |BJxq-bAE6zleaf) (:text |:home) (:type :leaf)
                                              |j $ {} (:at 1525108999855) (:by |root) (:id |BkgzZ0NaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525109002003) (:by |root) (:id |Hyh-ZCETz) (:text |:pages) (:type :leaf)
                                                  |j $ {} (:at 1525109002404) (:by |root) (:id |BkWzG-CVpM) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1524070643948) (:by |root) (:id |Bke3gKgB3z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070646898) (:by |root) (:id |Skb6etxBhG) (:text |:profile) (:type :leaf)
                                              |j $ {} (:at 1524070654495) (:by |root) (:id |ryLWFernz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070662619) (:by |root) (:id |B1zJ-teBnM) (:text |twig-members) (:type :leaf)
                                                  |j $ {} (:at 1524070665615) (:by |root) (:id |B1MzFxBhz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070670477) (:by |root) (:id |Bk-MYxShG) (:text |:sessions) (:type :leaf)
                                                      |j $ {} (:at 1524070672563) (:by |root) (:id |SyPMtxH2G) (:text |db) (:type :leaf)
                                                  |r $ {} (:at 1524070673171) (:by |root) (:id |HyWFMYxB3G) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070674094) (:by |root) (:id |HyWFMYxB3Gleaf) (:text |:users) (:type :leaf)
                                                      |j $ {} (:at 1524070675166) (:by |root) (:id |HyVcztlS2f) (:text |db) (:type :leaf)
                              |y $ {} (:at 1523120222572) (:by |root) (:id |H1DPud8iG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120223864) (:by |root) (:id |H1DPud8iGleaf) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120229051) (:by |root) (:id |rygpP_OUif) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1523120230136) (:by |root) (:id |HkaDOd8iM) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1523120230346) (:by |root) (:id |SJrAwd_8oM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1523120232122) (:by |root) (:id |rJVAwd_8if) (:text |:sessions) (:type :leaf)
                                          |j $ {} (:at 1523120232500) (:by |root) (:id |BJreO_d8of) (:text |db) (:type :leaf)
                              |yT $ {} (:at 1645355924005) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355924005) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                  |b $ {} (:at 1645355924005) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355924005) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
                          |v $ {} (:at 1507830683551) (:by |root) (:id |ryg7ssXahb) (:text |nil) (:type :leaf)
          |twig-members $ {} (:at 1524070676419) (:by |root) (:id |SkZ3zYeShG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629486107865) (:by |B1y7Rc-Zz) (:id |rJG3GYxHhG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1524070676419) (:by |root) (:id |rymhzFxH3G) (:text |twig-members) (:type :leaf)
              |r $ {} (:at 1524070676419) (:by |root) (:id |Hy4nzKerhG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524070680419) (:by |root) (:id |rygJQFlrnf) (:text |sessions) (:type :leaf)
                  |j $ {} (:at 1524070708862) (:by |root) (:id |r1-QYlSnf) (:text |users) (:type :leaf)
              |v $ {} (:at 1524070683188) (:by |root) (:id |SJxXQKlB2M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629486109951) (:by |B1y7Rc-Zz) (:id |SJxXQKlB2Mleaf) (:text |->) (:type :leaf)
                  |j $ {} (:at 1524070692906) (:by |root) (:id |rk7F7txBnM) (:text |sessions) (:type :leaf)
                  |r $ {} (:at 1524070693234) (:by |root) (:id |ByNpmYeS3M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629486113688) (:by |B1y7Rc-Zz) (:id |Hy7T7KeH2z) (:text |map-kv) (:type :leaf)
                      |j $ {} (:at 1524070696021) (:by |root) (:id |rkZg4tlH2M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070696334) (:by |root) (:id |r1gxVYgrnz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1524070696681) (:by |root) (:id |HyW4Flr2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070697507) (:by |root) (:id |BJX-4YgrhG) (:text |k) (:type :leaf)
                              |j $ {} (:at 1524070699358) (:by |root) (:id |r1z4tgS3M) (:text |session) (:type :leaf)
                          |r $ {} (:at 1524070700350) (:by |root) (:id |B1WEVFer3z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070701520) (:by |root) (:id |B1WEVFer3zleaf) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1524070702142) (:by |root) (:id |BJxLVtgH3f) (:text |k) (:type :leaf)
                              |r $ {} (:at 1524070702968) (:by |root) (:id |Hklw4FlH2G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070705127) (:by |root) (:id |SkPEYxB3M) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1524070714762) (:by |root) (:id |BklA4FeS3G) (:text |users) (:type :leaf)
                                  |r $ {} (:at 1524070715457) (:by |root) (:id |rJZ7BKlBnf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070716715) (:by |root) (:id |r1eXHKxS2z) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1524070717257) (:by |root) (:id |HkMHSYxB2G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070720176) (:by |root) (:id |SkbrHKeBhM) (:text |:user-id) (:type :leaf)
                                          |j $ {} (:at 1524070722292) (:by |root) (:id |rJMOBteH3f) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1524070725752) (:by |root) (:id |r1ZiBKeB3G) (:text |:name) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rkSex8bg0S-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |SkIleLblAr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ByDelU-eRSZ) (:text |app.twig.container) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |HkOlxUZlRH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r1txeIZlRSb) (:text |:require) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |rkZblUblRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |SkM-lUbxASW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |SJX-gU-e0SW) (:text |app.twig.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |Hy4We8bgCB-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:id |r1SbgUbg0S-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:id |BJ8-x8WeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541255553) (:by |root) (:id |BJv-e8beRSW) (:text |twig-user) (:type :leaf)
                |v $ {} (:at 1645355931285) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355931285) (:by |B1y7Rc-Zz) (:text |calcit.std.rand) (:type :leaf)
                    |b $ {} (:at 1645355931285) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355931285) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355931285) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1ubxLZx0SZ) (:type :expr)
          :data $ {}
      |app.twig.user $ {}
        :defs $ {}
          |twig-user $ {} (:at 1500541255553) (:by nil) (:id |SJxcQeIWxASZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629486100877) (:by |B1y7Rc-Zz) (:id |S1ZqXeIblCH-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByzcXgUblRBW) (:text |twig-user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByuqXg8ZxArZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJY57eLWxAH-) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |Hk99QgIbxAHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkjc7xUZlCSW) (:text |dissoc) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJ3qXeIbxRHW) (:text |user) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |rk6cXgLZx0HZ) (:text |:password) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rJ7t7eU-lRrZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |rkVF7xUWgASZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |rkrFQxUZxRBb) (:text |app.twig.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |By8K7xL-eArW) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |HyvKQx8WlRHW) (:text |:require) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1JqQxLblABb) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1500541255553) (:by nil) (:id |Hk7nmeIbx0SZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SkV3Qe8WlRHb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkrn7xI-gASZ) (:text |updater) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk82mlUZxRB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Byw3XlIZg0B-) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1_hme8WxAr-) (:text |op) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ByY2QgLbxArZ) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1517930722619) (:by |root) (:id |H1537x8-gABW) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hksn7xL-gASW) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by |root) (:id |SJ22mx8ZeRBb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1517930695338) (:by |root) (:id |rykROrP8f) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1517930698044) (:by |root) (:id |rklROHw8z) (:text |let) (:type :leaf)
                  |T $ {} (:at 1517930701054) (:by |root) (:id |SJlBRdSPUz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930698683) (:by |root) (:id |H1X0OSD8f) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517930699996) (:by |root) (:id |r14RdHv8M) (:text |f) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |BJ6hmlU-lASb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485993963) (:by |B1y7Rc-Zz) (:id |SJ0h7eUbg0rb) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJyaXeU-gRBZ) (:text |op) (:type :leaf)
                              |n $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text |&) (:type :leaf)
                                      |j $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text |args) (:type :leaf)
                                  |r $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text "|\"Unknown op:") (:type :leaf)
                                      |r $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                                  |v $ {} (:at 1629486002682) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HygpXe8Ze0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJZ6XxLWe0HW) (:text |:session/connect) (:type :leaf)
                                  |j $ {} (:at 1517930788022) (:by |root) (:id |SksmtSP8z) (:text |session/connect) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |r1KaQgU-xRrW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1cTQlUWlASW) (:text |:session/disconnect) (:type :leaf)
                                  |j $ {} (:at 1517930783929) (:by |root) (:id |r1_7FBPIM) (:text |session/disconnect) (:type :leaf)
                              |w $ {} (:at 1529231445104) (:by |root) (:id |Bkx1qO2QZm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529231483623) (:by |root) (:id |rJ-aIO2Q-Qleaf) (:text |:session/remove-message) (:type :leaf)
                                  |j $ {} (:at 1529231491015) (:by |root) (:id |BkrY_h7ZQ) (:text |session/remove-message) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |r1fCQxUWe0rb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkm0mgLZx0S-) (:text |:user/log-in) (:type :leaf)
                                  |j $ {} (:at 1517930780888) (:by |root) (:id |BkBmtrD8M) (:text |user/log-in) (:type :leaf)
                              |y $ {} (:at 1500541255553) (:by nil) (:id |rksRmlIZlCSW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |ry3Cmx8blABb) (:text |:user/sign-up) (:type :leaf)
                                  |j $ {} (:at 1517930777757) (:by |root) (:id |Bke-QtSDUM) (:text |user/sign-up) (:type :leaf)
                              |yT $ {} (:at 1500541255553) (:by nil) (:id |B1V1Nl8Zx0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1rJ4eIblRr-) (:text |:user/log-out) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryvkVgIbg0rW) (:text |user/log-out) (:type :leaf)
                              |yr $ {} (:at 1500541255553) (:by nil) (:id |HyUe4gLbxCr-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJDxEeLWgASb) (:text |:router/change) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1tl4lIZx0SW) (:text |router/change) (:type :leaf)
                  |j $ {} (:at 1517930704255) (:by |root) (:id |HyxOAOHDUM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930704937) (:by |root) (:id |HyxOAOHDUMleaf) (:text |f) (:type :leaf)
                      |j $ {} (:at 1517930706635) (:by |root) (:id |SkcC_SvLM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1517930709018) (:by |root) (:id |HJ2RdSPUf) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1517930725426) (:by |root) (:id |r1JytHD8G) (:text |sid) (:type :leaf)
                      |x $ {} (:at 1517930717948) (:by |root) (:id |S1z4JKSDLG) (:text |op-id) (:type :leaf)
                      |y $ {} (:at 1517930719120) (:by |root) (:id |BkGLkYrDUz) (:text |op-time) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |BJR97lLZlRSZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |ry1omxI-g0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryxjmgIZgArZ) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |SJ-o7eUZlRBZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |SkGj7eUZgCrZ) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |S1momeUWgRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rkEsmx8Wg0rZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BySiQgUZxCS-) (:text |app.updater.session) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1Ismg8blABW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |BkDsme8-l0H-) (:text |session) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |S1uoQlLWe0HW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |r1FoXeI-e0BZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |H19oXxI-xAH-) (:text |app.updater.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |HyojQg8WeCH-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |SJ2o7eIWeAHb) (:text |user) (:type :leaf)
                |v $ {} (:at 1500541255553) (:by nil) (:id |BkTsXxUbg0S-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |Sy0sXlLbxRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |B1J3XgIZe0SZ) (:text |app.updater.router) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |HkZ3XxLZlCSW) (:text |router) (:type :leaf)
                |y $ {} (:at 1529231005993) (:by |root) (:id |Ske8iUnXWm) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231006285) (:by |root) (:id |Ske8iUnXWmleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231007723) (:by |root) (:id |BJXLiI2Qb7) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1529231008972) (:by |root) (:id |SyGuiI3QWX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529231009860) (:by |root) (:id |HkZtj8hXZQ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1529231108810) (:by |root) (:id |rkpWDhQW7) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231110305) (:by |root) (:id |rkpWDhQW7leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231113905) (:by |root) (:id |HyE0bP3mWQ) (:text |respo-message.updater) (:type :leaf)
                    |r $ {} (:at 1529231114617) (:by |root) (:id |SJ7GMD27bX) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1529231114849) (:by |root) (:id |rJG7Mvn7Z7) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1529231116379) (:by |root) (:id |B1-XMPnX-7) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529231118760) (:by |root) (:id |SyWVGD2XZQ) (:text |update-messages) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SkfhmgLbxRHb) (:type :expr)
          :data $ {}
      |app.updater.router $ {}
        :defs $ {}
          |change $ {} (:at 1500541255553) (:by nil) (:id |ryQxUbg0B-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy4gLZgABZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByBlIWg0S-) (:text |change) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkIxIWgAHZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |BkhgI-xCrb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1al8ZxAB-) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1ClU-xRB-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Hk1geLWx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HklggLbxRB-) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hk-xxUbeRSZ) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |HyzlgIZgCSb) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |rkQgxU-l0Bb) (:text |:router) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B14gg8WxCrb) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |S1eLbxASW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |S1eeUbeCrZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |r1-l8We0BW) (:text |app.updater.router) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |HJzeUWeAr-) (:type :expr)
          :data $ {}
      |app.updater.session $ {}
        :defs $ {}
          |connect $ {} (:at 1500541255553) (:by nil) (:id |HyQ1WeI-xABW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJ4ybe8-g0Sb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |B1SyWx8bxABW) (:text |connect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ry8k-eUbgCr-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJv1Wl8WgRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |Hk_JWeLZg0Hb) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ryYkWl8Wx0SZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HyqJ-l8-lCBZ) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |r1jk-lIWlASb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJhyZe8blCHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rka1blIZeRrW) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |B1Ry-lIZgRrZ) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |r1klbeIWeRSZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJgeZeLbe0HZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HkWeWlLbl0rb) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |SyfgWx8WeAHW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ7xbgI-eAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkNeWeUWx0HW) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |BkBxWxIZxArW) (:text |schema/session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |HkUxZeLZxRrb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Skwebg8-gArb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |BkdxZxL-l0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ryKxZl8-x0SZ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |r19ebe8WeArW) (:text |sid) (:type :leaf)
          |disconnect $ {} (:at 1500541255553) (:by nil) (:id |HJsgZx8-lCr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Bknx-g8-gASW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByalZeUblRB-) (:text |disconnect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkCxZl8WxCH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJ4ZWeUWeArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkrbZe8blCrZ) (:text |update) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HyL-Wx8WgABb) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |H1v-Wx8ZlCBb) (:text |:sessions) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ_-ZgUbx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyKZZxUbxRBb) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyqWZlU-lCHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyjWWlLWe0HW) (:text |session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |Syh-WgIZxCHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Bka-Zg8beAS-) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJAZZl8ZgABZ) (:text |session) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by |root) (:id |S1yMbeI-e0BW) (:text |sid) (:type :leaf)
          |remove-message $ {} (:at 1529231499908) (:by |root) (:id |S1Z4cd3X-7) (:type :expr)
            :data $ {}
              |T $ {} (:at 1529231499908) (:by |root) (:id |rkMV9_nQZQ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1529231499908) (:by |root) (:id |HymV5_27ZX) (:text |remove-message) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk5cu3XWm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1529231506714) (:by |root) (:id |H1icunXWQ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529231507936) (:by |root) (:id |H1icunXWQleaf) (:text |update-in) (:type :leaf)
                  |j $ {} (:at 1529231509725) (:by |root) (:id |r1TcOh7Z7) (:text |db) (:type :leaf)
                  |r $ {} (:at 1529231509958) (:by |root) (:id |H1QCcOnQ-X) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529231510376) (:by |root) (:id |SyMC9_2XZQ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1529231511756) (:by |root) (:id |SkIRq_nmWm) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1529231512509) (:by |root) (:id |HkGejd2QZX) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1529231515700) (:by |root) (:id |BJZj_hQ-m) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1529231534326) (:by |root) (:id |H1bU2_hmZQ) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529231534991) (:by |root) (:id |Syv3_27ZX) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1529231535248) (:by |root) (:id |HJXvh_3XWX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231536189) (:by |root) (:id |BkfPhun7bQ) (:text |messages) (:type :leaf)
                      |T $ {} (:at 1529231516827) (:by |root) (:id |r1Bi_2XZX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231517957) (:by |root) (:id |r1Bi_2XZXleaf) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1529231519342) (:by |root) (:id |S1m8sOh7ZQ) (:text |messages) (:type :leaf)
                          |r $ {} (:at 1529231521395) (:by |root) (:id |ryXYs_hXb7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529231522521) (:by |root) (:id |HyvvoO2QWQ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1529231524125) (:by |root) (:id |rJxjjdnQZQ) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |Sy_0leLZgCrW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1t0llUZg0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryq0ee8Wl0BZ) (:text |app.updater.session) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |rJs0xxI-g0rZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |B12AggIZl0rW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |SyaAlgIZeCSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rJ00glL-xAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BkyJbxUWxCH-) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1xyWgUWlRHb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |By-J-xU-gABb) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJGJZgL-x0rZ) (:type :expr)
          :data $ {}
      |app.updater.user $ {}
        :defs $ {}
          |log-in $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |log-in) (:type :leaf)
              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                              |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |x $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                          |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                          |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                      |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                      |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                                  |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ") (:type :leaf)
                                                          |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                  |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                          |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                          |v $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                  |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text "|\"No user named: ") (:type :leaf)
                                                      |r $ {} (:at 1629485973044) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
          |log-out $ {} (:at 1500541255553) (:by nil) (:id |Bk8TlgU-xAHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BJPaegIWgAHZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |HkuTeeIbxAB-) (:text |log-out) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |BkFael8ZgRrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJ9pxxIZeRHW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |BkjpegUbxArZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |Hk3peeU-e0BW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |H16agxUbx0r-) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HyRpllIblRSb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rkyRlxUZxCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1gRge8WeCBb) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1WAxxIWlAS-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |BkzRglUWgCHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HymReg8WgRBZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |H1V0ggLZgCB-) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rJBRgeUbxCHZ) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |HJL0egLbe0H-) (:text |:user-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJvCgxLbeRB-) (:text |nil) (:type :leaf)
          |sign-up $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |sign-up) (:type :leaf)
              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |o $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                      |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                          |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ") (:type :leaf)
                                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                      |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |h $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |l $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:nickname) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |o $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                  |q $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |:avatar) (:type :leaf)
                                      |b $ {} (:at 1645355834390) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |SyuRgL-x0HZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1KCx8bgAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |Sk5AgLWlRrb) (:text |app.updater.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |ryi0xL-lCH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r13AgIWlAS-) (:text |:require) (:type :leaf)
                |r $ {} (:at 1645355883763) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1645355883763) (:by |B1y7Rc-Zz) (:text |calcit.std.hash) (:type :leaf)
                    |b $ {} (:at 1645355883763) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1645355883763) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1645355883763) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |B141llLbeCBW) (:type :expr)
          :data $ {}
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)

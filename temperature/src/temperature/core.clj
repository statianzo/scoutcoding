(ns temperature.core
  (:gen-class))

;(defn c-to-f [celsius]
  ;(+ 32 (/ (* 9 celsius) 5))
;)

(defn c-to-f [celsius]
  (->
    celsius
    (* 9)
    (/ 5)
    (+ 32)
    ))


(defn -main [& args]
  (do
    (println "Whats the temperature in Celsius?")
    (let [temp (Float/parseFloat (read-line))
          converted (c-to-f temp)]
      (println (str "The temperature is " converted " Farenheit")))))

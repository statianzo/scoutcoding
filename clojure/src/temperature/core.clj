(ns temperature.core
  (:gen-class))

; Celsius to Fahrenheit
; Multiply by 9, divide by 5, add 32
(defn c-to-f [celsius]
  (+ 32 (/ (* 9 celsius) 5))
)

(defn -main [& args]
  (do
    (println "Whats the temperature in Celsius?")
    (let [temp (Float/parseFloat (read-line))
          converted (c-to-f temp)]
      (println (str "The temperature is " converted " F")))))

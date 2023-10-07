(use joy)
(import spork/json)
(import ../db-helper)

(defn handler []
  (def @[cars] (db-helper/get-cars))
  (application/json (json/encode cars)))

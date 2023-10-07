(use joy)
(import spork/json)
(import ../db-helper)

(defn handler [req]
  (def {:brand brand :model model :year year} (req :params))
  (db-helper/insert-car {:brand brand :model model :year year})
  (redirect-to :all-cars/handler))

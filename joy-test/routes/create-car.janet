(use joy)
(import spork/json)

(defn handler [req]
  (def {:brand brand :model model} (req :params))
  (def car {:brand brand :model model})
  (application/json (json/encode car)))

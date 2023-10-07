(use joy)
(import ./db :as db)
(import ./router :as rtr)

(db/init)

(def app (app {:routes rtr/routes}))

(server app 9001)

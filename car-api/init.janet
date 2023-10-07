(use joy)
(import ./router :as rtr)

(def app (app {:routes rtr/routes}))

(server app 9001)

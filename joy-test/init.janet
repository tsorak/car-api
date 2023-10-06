(use joy)

(defn home [request]
  (text/plain "You found joy!"))

(defroutes router
  [:get "/" :home])

(def app (app {:routes router}))

(server app 9001)

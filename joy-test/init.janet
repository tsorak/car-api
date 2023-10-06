(use joy)

(defn home [request]
  (text/plain "You found joy!"))

(route :get "/" :home)

(def app (app))

(server app 9001)

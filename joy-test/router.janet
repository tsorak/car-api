(use joy)
(import ./routes/root :as root)
(import ./routes/create-car :as create-car)

(defroutes routes
  [:get "/" :root/handler]
  [:get "/create-car/:brand/:model" :create-car/handler])

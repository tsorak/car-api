(use joy)
(import ./routes/root :as root)
(import ./routes/all-cars :as all-cars)
(import ./routes/create-car :as create-car)

(defroutes routes
  [:get "/" :root/handler]
  [:get "/cars" :all-cars/handler]
  [:get "/create-car/:brand/:model/:year" :create-car/handler])

(use joy)
(import ./routes/root :as root)

(defroutes routes
  [:get "/" :root/handler])

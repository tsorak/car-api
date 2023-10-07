(import ./db)
(import sqlite3 :as sql)

(defn insert-car [car]
  (sql/eval db/db "INSERT INTO car (name,model,year) VALUES (:brand,:model,:year)" car))

(defn get-cars []
  (sql/eval db/db "SELECT * FROM car"))

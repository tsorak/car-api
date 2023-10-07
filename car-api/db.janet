(use ./debug)
(import sqlite3 :as sql)

(def db (sql/open "dev.db"))

(defn setup-car-table []
  (sql/eval db "DROP TABLE IF EXISTS car")
  (sql/eval db "CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
    )"))

(defn init []
  (setup-car-table))

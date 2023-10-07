(defn print-strct
  [strct]
  (each field strct
    (print field)))

(defn print-rows
  [rows]
  (each row rows
    (print-strct row)))

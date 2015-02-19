(in-package :clos-fixtures-test)

(def-suite fixtures)
(in-suite fixtures)

(test cities
  (is
   (equal
    (gethash "Denver" *city-db*)
    "Colorado"))
  (is
   (equal
    (gethash "Portland" *city-db*)
    "Oregon")))

(test molecules
  (is
   (equal
    (gethash "Methane" *molecule-db*)
    "CH4"))
  (is
   (equal
    (gethash "Cubane" *molecule-db*)
    "C8H8"))
  (is
   (equal
    (gethash "Water" *molecule-db*)
    "H2O")))

(run! 'fixtures)

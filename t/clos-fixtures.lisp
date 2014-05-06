(in-package :cl-user)
(defpackage clos-fixtures-test
  (:use :cl :clos-fixtures))
(in-package :clos-fixtures-test)

(defclass city ()
  ((name  :type string :initarg :name :reader name)
   (state :type string :initarg :state :reader state)))

(defmethod add-city ((city city))
  (format t "Adding ~A, ~A.~&" (name city) (state city)))

(defclass molecule ()
  ((name :type string :initarg :name :reader name)
   (formula :type string :initarg :formula :reader formula)))

(defmethod add-molecule ((molecule molecule))
  (format t "Adding ~A, ~A.~&" (name molecule) (formula molecule)))

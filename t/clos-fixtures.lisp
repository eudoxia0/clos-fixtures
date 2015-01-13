(in-package :cl-user)
(defpackage clos-fixtures-test
  (:use :cl :fiveam)
  (:export :city
           :molecule))
(in-package :clos-fixtures-test)

(defparameter *city-db*
  (make-hash-table :test #'equal))

(defparameter *molecule-db*
  (make-hash-table :test #'equal))

(defclass city ()
  ((name  :type string :initarg :name :reader name)
   (state :type string :initarg :state :reader state)))

(defmethod clos-fixtures:register-fixture ((city city))
  (with-slots (name state) city
    (format t "~&Adding ~A, ~A." name state)
    (setf (gethash name *city-db*) state)))

(defclass molecule ()
  ((name :type string :initarg :name :reader name)
   (formula :type string :initarg :formula :reader formula)))

(defmethod clos-fixtures:register-fixture ((molecule molecule))
  (with-slots (name formula) molecule
    (format t "~&Adding ~A (~A)." name formula)
    (setf (gethash name *molecule-db*) formula)))

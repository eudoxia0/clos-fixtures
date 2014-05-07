(in-package :cl-user)
(defpackage clos-fixtures-test
  (:use :cl))
(in-package :clos-fixtures-test)

(defclass city ()
  ((name  :type string :initarg :name :reader name)
   (state :type string :initarg :state :reader state)))

(defmethod clos-fixtures:register-fixture ((city city))
  (format t "Adding ~A, ~A.~&" (name city) (state city)))

(defclass molecule ()
  ((name :type string :initarg :name :reader name)
   (formula :type string :initarg :formula :reader formula)))

(defmethod clos-fixtures:register-fixture ((molecule molecule))
  (format t "Adding ~A (~A).~&" (name molecule) (formula molecule)))

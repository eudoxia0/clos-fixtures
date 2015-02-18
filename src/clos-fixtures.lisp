(in-package :cl-user)
(defpackage clos-fixtures
  (:use :cl :asdf)
  (:export :register-fixture
           :load-fixtures))
(in-package :clos-fixtures)

(defun read-fixtures (path package)
  (uiop:with-safe-io-syntax (:package package)
    (uiop:read-file-forms path)))

(defgeneric register-fixture (instance)
  (:documentation "Register a fixture."))

(defun load-fixtures (pathname &optional (package-name *package*))
  (let* ((package (find-package package-name))
         (fixtures (read-fixtures pathname package)))
    (loop for fixture in fixtures do
      (let ((class (first fixture)))
        (loop for fixture-params in (rest fixture) do
          (register-fixture (apply #'make-instance
                                   (append (list class)
                                           fixture-params))))))))

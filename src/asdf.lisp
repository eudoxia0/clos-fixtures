(in-package :clos-fixtures)

(defclass fixture (source-file)
  ((type :initform "lisp")
   (package-name :reader fixture-package-name
                 :initarg :package
                 :initform :cl
                 :documentation "The name of the package to read the forms in.")))

(defmethod perform ((o load-op) (component fixture)) t)

(defmethod output-files ((operation compile-op) (component fixture))
  nil)

(defmethod perform ((o compile-op) (component fixture))
  (let ((pathname (component-pathname component)))
    (format t "~&Loading fixture '~A'" (pathname-name pathname))
    (load-fixtures pathname (fixture-package-name component))))

(import 'fixture :asdf)

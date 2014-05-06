(in-package :clos-fixtures)

(defclass fixture (source-file)
  ((type :initform "lisp")))

(defmethod perform ((o load-op) (component fixture)) t)

(defmethod output-files ((operation compile-op) (component fixture))
  nil)

(defmethod perform ((o compile-op) (component fixture))
  (let ((pathname (component-pathname component)))
    (format t "Loading fixture '~A'~&" (pathname-name pathname))
    (load-fixtures (read-fixtures pathname))))

(import 'fixture :asdf)

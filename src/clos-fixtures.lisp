(in-package :cl-user)
(defpackage clos-fixtures
  (:use :cl :asdf))
(in-package :clos-fixtures)

(defun read-fixtures (path)
  ;; Credit: http://www.ymeme.com/slurping-a-file-common-lisp-83.html
  (with-open-file (stream path)
    (let ((seq (make-array (+ 2 (file-length stream))
                           :element-type 'character
                           :fill-pointer t
                           :adjustable t)))
      (setf (elt seq 0) #\()
      (setf (fill-pointer seq) (read-sequence seq stream :start 1))
      (setf (elt seq (1- (fill-pointer seq))) #\))
      (read-from-string seq))))

(defun load-fixtures (fixtures)
  (print fixtures))

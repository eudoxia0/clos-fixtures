(defsystem clos-fixtures-test
  :author "Fernando Borretti"
  :license "MIT"
  :defsystem-depends-on (:clos-fixtures)
  :components ((:module "t"
                :components
                ((:file "clos-fixtures")
                 (:fixture "cities")
                 (:fixture "molecules" :package :clos-fixtures-test)))))

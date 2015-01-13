(asdf:defsystem clos-fixtures-test
  :author "Fernando Borretti"
  :license "MIT"
  :defsystem-depends-on (:clos-fixtures
                         :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "clos-fixtures")
                 (:fixture "cities")
                 (:fixture "molecules" :package :clos-fixtures-test)
                 (:file "final")))))

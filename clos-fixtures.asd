(asdf:defsystem clos-fixtures
  :version "0.1"
  :author "Fernando Borretti"
  :license "MIT"
  :homepage "https://github.com/eudoxia0/clos-fixtures"
  :depends-on (:asdf)
  :components ((:module "src"
                :components
                ((:file "clos-fixtures")
                 (:file "asdf"))))
  :description "ASDF-loadable fixtures for CLOS classes"
  :long-description #.(uiop:read-file-string
                       (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op clos-fixtures-test))))

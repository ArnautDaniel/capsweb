(in-package :cl-user)
(defpackage capsweb-test-asd
  (:use :cl :asdf))
(in-package :capsweb-test-asd)

(defsystem capsweb-test
  :author "<Jack Lucas>"
  :license ""
  :depends-on (:capsweb
               :prove)
  :components ((:module "t"
                :components
                ((:file "capsweb"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))

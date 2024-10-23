;;;; blackbox.asd

(asdf:defsystem #:blackbox
  :description "A lazy and infite data structure based language extension"
  :author "Iván Villagrasa <ivvil412@gmail.com>"
  :license  "GPL-V3"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "blackbox")
			   (:file "ranges")))

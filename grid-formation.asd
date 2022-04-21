(asdf:defsystem #:grid-formation
  :description "Simple cellular grid formations and algorithms."
  :author "Michael Fiano <mail@mfiano.net>"
  :license "MIT"
  :homepage "https://git.mfiano.net/mfiano/grid-formation"
  :version "0.1.0"
  :encoding :utf-8
  :depends-on (#:mfiano-utils
               #:origin)
  :pathname "src"
  :serial t
  :components
  ((:file "package")
   (:file "grid")
   (:file "quad")
   (:file "quad-4-way")
   (:file "quad-8-way")
   (:file "hex")
   (:file "hex-rows")
   (:file "hex-columns")))

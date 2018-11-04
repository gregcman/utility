(asdf:defsystem #:utility
  :author "terminal625"
  :description "A collection of useful functions and macros."
  :license "MIT"
  :bug-tracker "https://github.com/terminal625/utility/issues"
  :source-control (:git "https://github.com/terminal625/utility.git")
  :depends-on ()
  :serial t
  :components
  ((:file "package")
   (:file "other")
   (:file "math")
   (:file "utility"))) 

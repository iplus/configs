{:user {:plugins [[jonase/eastwood "0.2.3"]
                  [lein-kibit "0.1.3"]
                  [com.billpiel/sayid "0.0.11"]
                  [lein-bikeshed "0.4.1"]
                  [lein-codeindex "0.1.0"]
                  [lein-checkall "0.1.1"]
                  [lein-cloverage "1.0.9"]
                  [lein-repetition-hunter "0.1.0-SNAPSHOT"]
                  [lein-ancient "0.6.10"]]
        :dependencies [[spyscope "0.1.5"]] ;; #spy/p reader macro
        ;; [funcool/cuerdas "2.0.2"] ;; string manipulation
        ;; [manifold "0.1.5"] ;; asynchronous programming
        ;; [tulos/manifail "0.4.0"] ;; additions to manifold
        ;; [tracks "1.0.3"] ;; transformations by example
        ;; [spectrum "0.1.1"] ;; spec static analysis
        :injections [(require 'spyscope.core)]}
 :repl {:dependencies [^:displace [org.clojure/core.typed "0.3.25"] ;; Since 0.3.26 breaks piggyback
                       [acyclic/squiggly-clojure "0.1.7"]]}}

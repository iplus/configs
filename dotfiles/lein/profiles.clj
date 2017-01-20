{:user {:plugins [[jonase/eastwood "0.2.3"]
                  [lein-kibit "0.1.3"]
                  [com.billpiel/sayid "0.0.10"]
                  [lein-bikeshed "0.4.1"]
                  [lein-codeindex "0.1.0"]
                  [lein-checkall "0.1.1"]
                  [lein-repetition-hunter "0.1.0-SNAPSHOT"]]
        :dependencies [[spyscope "0.1.5"]]
        ;; [funcool/cuerdas "2.0.2"] ;; string manipulation
        ;; [manifold "0.1.5"] ;; asynchronous programming
        ;; [tulos/manifail "0.4.0"]
        ;; [tracks "1.0.3"] ;; transformations by example
        ;; [spectrum "0.1.1"] ;; spec static analysis
        :injections [(require 'spyscope.core)]}
 :repl {:dependencies [[acyclic/squiggly-clojure "0.1.7"]]}}

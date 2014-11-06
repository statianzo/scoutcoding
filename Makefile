default:
	echo Call "make ruby", "make js", or "make clojure"

ruby:
	cd ruby && make

clojure:
	cd clojure && make

js:
	cd js && make

.PHONY: default ruby clojure js

.PHONY: default tests open build install help open-build

default: install build

install:
	npm install

help:
	@echo "run make [help|install|build|open|open-build|tests]"

build:
	node node_modules/requirejs/bin/r.js -o build/build.js

open-build:
	make build
	open http://localhost:8000/build.html
	python -m SimpleHTTPServer 8000

open:
	open http://localhost:8000/
	python -m SimpleHTTPServer 8000

tests:
	make build
	open http://localhost:8000/tests/jasmine/SpecRunner.html
	python -m SimpleHTTPServer 8000

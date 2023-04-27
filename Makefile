.PHONY: deps dev

build:
	docker build -t droposhado/wooka:latest

deps:
	pip install -r requirements.txt
	git clone https://github.com/droposhado/err-maya-plugin.git extra_plugins/err-maya-plugin
	pip install -r extra_plugins/err-maya-plugin/requirements.txt

dev:
	pip install -r requirements-dev.txt

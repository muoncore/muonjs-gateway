
run: install
	npm start

install:
	npm install

docker:
	docker build . -t muonjs-gateway

build:
	echo "No clean, needed for release"
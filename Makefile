
run: install
	npm start

install:
	npm install

docker:
	docker build . -t muonjs-gateway

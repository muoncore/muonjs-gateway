
run: install
	npm start

install:
	npm install

docker:
	docker build . -t muonjs-gateway

docker-release: install docker
	docker tag muonjs-gateway simplicityitself-muon-image.jfrog.io/muonjs-gateway:latest
	docker push simplicityitself-muon-image.jfrog.io/muonjs-gateway:latest

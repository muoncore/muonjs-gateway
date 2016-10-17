# MuonJS Gateway

The Muon.js project allows you to build muon based services that run within the browser, and so gain rich access to back end systems.

To do this, a websocket based transport and transport message router must be running on the back end.

You can construct your own, using Muon.js directly, however this project is intended to give a standardised implementation covering the majority of use cases.

It is currently in early development.

## How to use

Assuming you have an existing Muon environment and AMQP broker as your transport, plus the use of docker compose for orchestration.

Add this into your `docker-compose.yml`

```
  gateway:
    image: simplicityitself-muon-image.jfrog.io/muonjs-gateway:latest
    links:
      - rabbitmq
    environment:
      - MUON_URL=amqp://muon:microservices@rabbitmq
    ports:
      - "9898:9898"
```
With MUON_URL pointing at the appropriate AMQP broker instance to use.

Start it using `docker-compose up -d gateway`. You can then proceed to build a Muon.js client in the browser - https://github.com/muoncore/muon.js

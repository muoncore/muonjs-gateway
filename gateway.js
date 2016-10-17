
require("sexylog")

var Muon = require("muon-core");

var gwport = 9898

var muon = Muon.create("muon-gateway", process.env.MUON_URL || "amqp://muon:microservices@rabbitmq");
var muonjs = require("muonjs").gateway({port: gwport, muon:muon})

muon.handle('/', function (event, respond) {
    respond("This is the gateway speaking")
});

console.log("Started muon/ websocket gateway. MuonJS can connect to port " + gwport)

var ConvertLib = artifacts.require("./ConvertLib.sol");
var DoorCoin = artifacts.require("./DoorCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, DoorCoin);
  deployer.deploy(DoorCoin);
};

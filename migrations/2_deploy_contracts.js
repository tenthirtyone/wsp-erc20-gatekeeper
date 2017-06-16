var GateKeeper = artifacts.require("./GateKeeper.sol");

module.exports = function(deployer) {
  deployer.deploy(GateKeeper);
};

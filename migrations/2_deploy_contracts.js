const ConvertLib = artifacts.require("ConvertLib");
const MetaCoin = artifacts.require("MetaCoin");
const SignedDigitalAsset = artifacts.require("SignedDigitalAsset");
const Learning = artifacts.require("Learning");

module.exports = function(deployer) {
  // deployer.deploy(ConvertLib);
  // deployer.link(ConvertLib, MetaCoin);
  // deployer.deploy(MetaCoin);
  deployer.deploy(SignedDigitalAsset,'This is institution name');
  deployer.deploy(Learning,'asdsad');
};

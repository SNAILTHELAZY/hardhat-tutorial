/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require('@nomiclabs/hardhat-waffle'); // since it is depends on ethers, so don't need to add ethers.

module.exports = {
  solidity: "0.7.3",
};

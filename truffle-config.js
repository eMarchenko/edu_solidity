require("dotenv").config();
var HDWalletProvider = require("@truffle/hdwallet-provider");


module.exports = {
  networks: {
    development: {
      host: "localhost",
      network_id: "*",
      port: 8545,
    },
    coverage: {
      host: "localhost",
      network_id: "*",
      port: 8555,         // <-- If you change this, also set the port option in .solcover.js.
      gas: 0xfffffffffff, // <-- Use this high gas value
      gasPrice: 0x01      // <-- Use this low gas price
    },
    live: {
      provider: function() {
        return new HDWalletProvider(process.env.DEPLOYER_PK, process.env.INFURA_LINK);
      },
      network_id: process.env.NETWORK_ID,
      gasPrice: 10000000000,//10 gwei
      from: process.env.DEPLOYER_ADDRESS.toLowerCase(),
    }
  },
  compilers: {
    solc: {
      version: "0.6.12",
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    }
  },
  plugins: [
    "truffle-plugin-verify",
    "solidity-coverage"
  ],
  api_keys: { // used by 'truffle-plugin-verify'
    etherscan: process.env.ETHERSCAN_API_KEY
  }
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
};
require('@nomiclabs/hardhat-waffle');
require('dotenv').config();
const {PRIVATE_KEY, API_URL} = process.env;

module.exports = {
  solidity: '0.8.4',
  settings: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
  paths: {
    sources: './src',
    tests: './tests',
    cache: './cache',
    artifacts: './artifacts',
  },
  mocha: {
    timeout: 20000,
  },
  networks: {
    local: {
      url: 'http://127.0.0.1:8545',
      accounts: [],
    },
    l14: {
      url: 'https://rpc.l14.lukso.network',
      accounts: [],
    },
    goerli: {
      url: 'https://goerli.prylabs.net',
      accounts: [PRIVATE_KEY],
    },
    ropsten: {
      url: API_URL,
      accounts: [PRIVATE_KEY]
    },
  },
}

require("@nomiclabs/hardhat-waffle");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.4",
  networks: {
    ropsten: {
      //Alchemy API to manage contracts
      url: 'https://eth-ropsten.alchemyapi.io/v2/z4WpA8UKgqnwbTYmrZu15yCOiijBKaRv',
      //Demo Testnet account private key. No problem on being exposed
      accounts: ['e8911ebcbade1138529496931da18a7959a4ebc9a3865afd7e6b93e23b65b07e'],
    },
  }
};

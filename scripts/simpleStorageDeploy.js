// SPDX-License-Identifier: MIT
const { ethers } = require('hardhat');

async function main() {
  const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
  const simple_storage = await SimpleStorage.deploy()

  console.log('HelloWorld deployed to:', simple_storage.address)
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error)
    process.exit(1)
  })

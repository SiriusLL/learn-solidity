// SPDX-License-Identifier: MIT
const { ethers } = require("hardhat");

async function main() {
  const Gas = await ethers.getContractFactory("Gas");
  const gas = await Gas.deploy();

  console.log("Gas deployed to:", gas.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

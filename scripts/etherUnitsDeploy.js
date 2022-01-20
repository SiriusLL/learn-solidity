// SPDX-License-Identifier: MIT
const { ethers } = require("hardhat");

async function main() {
  const EtherUnits = await ethers.getContractFactory("EtherUnits");
  const ether_units = await EtherUnits.deploy();

  console.log("HelloWorld deployed to:", ether_units.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

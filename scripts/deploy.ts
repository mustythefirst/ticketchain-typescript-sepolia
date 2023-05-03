import { ethers } from "hardhat";

async function main() {

  const Ticketchain = await ethers.getContractFactory("Ticketchain");
  const ticketchain = await Ticketchain.deploy();

  await ticketchain.deployed();

  console.log(
    `Ticketchain deployed to ${ticketchain.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

/**
 * After starting the script our transactions will be deployed and then it will
 * return the address of our contract deployed on the blockchain network
 */
const main = async () => {
  //This is like a functions factory or class that is going to generate instances of a specific contract
  const transactionsFactory = await hre.ethers.getContractFactory("Transactions");
  const transactionsContract = await transactionsFactory.deploy();

  await transactions.deployed();

  //Addres from the blockchain network
  console.log("Transactions address:", transactionsContract.address);
};

/**
 * Run async process to execute main function while handling erros
 * in case something goes wrong it throws the error and exit the current process
 */
const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
}

runMain();
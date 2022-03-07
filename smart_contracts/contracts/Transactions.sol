// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
    // uint256 = number variable
    // variable to count the number of transactions
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword); 

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    //Transactions vectors
    TransferStruct[] transactions;

    /*
    * Call function to emit the events
     */
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    /*
     * Return all transactions list
     */
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    /*
     * Return a counter with the number of all transactions done
     */
    function getTransactionCount() public view returns (uint256){
        return transactionCount;
    }
}
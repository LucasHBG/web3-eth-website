// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
    //uint256 = variavel de numero
    // Variavel para contar o número de transações
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

    //Vetor de transações
    TransferStruct[] transactions;

    /*
    * Emissor de eventos
     */
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    /*
     * Retorna lista de todas transações
     */
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    /*
     * Retorna um contador de transações feitas
     */
    function getTransactionCount() public view returns (uint256){
        return transactionCount;
    }
}
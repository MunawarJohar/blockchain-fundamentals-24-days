// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract FunctionModifiers {  
    address public owner;  
    bool public isContractActive = true;  

    // Modifier to restrict access to the contract owner  
    modifier onlyOwner() {  
        require(msg.sender == owner, "You are not the owner!");  
        _;  
    }  

    // Modifier to ensure the contract is active  
    modifier contractIsActive() {  
        require(isContractActive, "Contract is not active!");  
        _;  
    }  

    // Constructor to set the owner  
    constructor() {  
        owner = msg.sender;  
    }  

    // Function to deactivate the contract, restricted to owner  
    function deactivateContract() public onlyOwner {  
        isContractActive = false;  
    }  

    // Function to update some state, only when the contract is active  
    function updateState() public contractIsActive {  
        // Update logic here  
    }  

    // Function to demonstrate multiple modifiers  
    function restrictedFunction() public onlyOwner contractIsActive {  
        // Restricted function logic here  
    }  
}  

// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarEnums {  
    // Define an Enum for contract states  
    enum ContractState { Inactive, Active, Paused, Terminated }  

    // Enum variable to store the current state  
    ContractState public currentState;  

    // Constructor to initialize the contract state  
    constructor() {  
        currentState = ContractState.Inactive;  
    }  

    // Function to activate the contract  
    function activateContract() public {  
        currentState = ContractState.Active;  
    }  

    // Function to pause the contract  
    function pauseContract() public {  
        require(currentState == ContractState.Active, "Contract must be active to pause.");  
        currentState = ContractState.Paused;  
    }  

    // Function to terminate the contract  
    function terminateContract() public {  
        currentState = ContractState.Terminated;  
    }  

    // Function to check if the contract is active  
    function isActive() public view returns (bool) {  
        return currentState == ContractState.Active;  
    }  
}  

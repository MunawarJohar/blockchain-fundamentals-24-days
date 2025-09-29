// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarDataLocation {  
    // State variable (storage)  
    uint[] public storageArray;  

    // Function to add an element to the storage array  
    function addToStorageArray(uint _value) public {  
        storageArray.push(_value);  
    }  

    // Function to demonstrate memory data location  
    function updateMemoryArray(uint[] memory myArray) public pure returns (uint[] memory) {  
        myArray[0] = 999;  // This change is temporary  
        return myArray;  
    }  

    // Function to demonstrate calldata data location  
    function viewCalldataArray(uint[] calldata myArray) external pure returns (uint) {  
        return myArray[0];  
    }  
}  

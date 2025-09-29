// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarGasFees {  
    uint public storedData;  

    // Function to store a value in storage  
    function storeData(uint _value) public {  
        storedData = _value;  // High gas cost due to storage write  
    }  

    // Function to read the stored value  
    function readData() public view returns (uint) {  
        return storedData;  // Low gas cost due to storage read  
    }  

    // Function to perform a simple computation  
    function addNumbers(uint _a, uint _b) public pure returns (uint) {  
        return _a + _b;  // Minimal gas cost for computation  
    }  
}  

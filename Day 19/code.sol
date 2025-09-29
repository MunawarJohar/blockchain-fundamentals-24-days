// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarEvents {  
    // Define an event for user registration  
    event UserRegistered(address indexed user, string name, uint timestamp);  

    // Define an event for transferring funds  
    event FundsTransferred(address indexed from, address indexed to, uint amount);  

    // Function to register a user  
    function registerUser(string memory _name) public {  
        emit UserRegistered(msg.sender, _name, block.timestamp);  
    }  

    // Function to transfer funds  
    function transferFunds(address _to, uint _amount) public {  
        emit FundsTransferred(msg.sender, _to, _amount);  
    }  
}  

// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarMapping {  
    // Mapping to store balances  
    mapping(address => uint) public balances;  

    // Function to set balance for a user  
    function setBalance(address _user, uint _amount) public {  
        balances[_user] = _amount;  
    }  

    // Function to get balance of a user  
    function getBalance(address _user) public view returns (uint) {  
        return balances[_user];  
    }  

    // Function to reset balance of a user  
    function resetBalance(address _user) public {  
        delete balances[_user];  
    }  
}  

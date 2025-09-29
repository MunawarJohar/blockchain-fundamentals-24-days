// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarErrors {  
    uint public balance;  

    // Function to deposit funds  
    function deposit(uint amount) public {  
        require(amount > 0, "Deposit amount must be greater than zero.");  
        balance += amount;  
    }  

    // Function to withdraw funds  
    function withdraw(uint amount) public {  
        if (amount > balance) {  
            revert("Insufficient balance.");  
        }  
        balance -= amount;  
    }  

    // Function to demonstrate assert  
    function checkBalanceInvariant() public view {  
        assert(balance >= 0);  
    }  

    // Function using custom error  
    error UnauthorizedAccess(address caller);  

    function restrictedFunction() public view {  
        if (msg.sender != address(0x123)) {  
            revert UnauthorizedAccess(msg.sender);  
        }  
    }  
}  

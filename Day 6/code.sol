// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract VariablesAndConstants {  
    // State variable  
    uint public myStateVariable = 50;  

    // Constant  
    uint public constant MY_CONSTANT = 100;  

    // Function demonstrating local and global variables  
    function demoVariables() public view returns (address, uint) {  
        uint localVariable = 10;  // Local variable  
        return (msg.sender, localVariable + MY_CONSTANT);  
    }  
}  

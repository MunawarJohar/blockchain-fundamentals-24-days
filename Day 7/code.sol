// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract ImmutableExample {  
    // Immutable variable  
    address public immutable owner;  

    // Constructor to set the immutable variable  
    constructor() {  
        owner = msg.sender;  // Assigns the deployer's address as the owner  
    }  

    // Function to return the owner's address  
    function getOwner() public view returns (address) {  
        return owner;  
    }  
}  

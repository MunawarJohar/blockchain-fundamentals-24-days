// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract HelloWorld {  
    // State variable to store the message  
    string public message;  

    // Constructor to set the initial message  
    constructor() {  
        message = "Hello, World!";  
    }  

    // Function to get the current message  
    function getMessage() public view returns (string memory) {  
        return message;  
    }  
}  

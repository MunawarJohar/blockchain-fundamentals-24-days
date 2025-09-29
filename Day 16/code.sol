// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarStructs {  
    // Define a struct to represent a user  
    struct User {  
        uint id;  
        string name;  
        bool isActive;  
    }  

    // Mapping to store user information by ID  
    mapping(uint => User) public users;  

    // Function to create a new user  
    function createUser(uint _id, string memory _name, bool _isActive) public {  
        users[_id] = User(_id, _name, _isActive);  
    }  

    // Function to get user information by ID  
    function getUser(uint _id) public view returns (User memory) {  
        return users[_id];  
    }  

    // Function to update a user's active status  
    function updateUserStatus(uint _id, bool _isActive) public {  
        users[_id].isActive = _isActive;  
    }  
}  

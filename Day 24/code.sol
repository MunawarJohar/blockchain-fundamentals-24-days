// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

// Parent contract  
contract Parent {  
    string public familyName;  

    constructor(string memory _familyName) {  
        familyName = _familyName;  
    }  

    function getFamilyName() public view returns (string memory) {  
        return familyName;  
    }  
}  

// Child contract  
contract Child is Parent {  
    string public firstName;  

    constructor(string memory _familyName, string memory _firstName) Parent(_familyName) {  
        firstName = _firstName;  
    }  

    function getFullName() public view returns (string memory) {  
        return string(abi.encodePacked(firstName, " ", familyName));  
    }  
}  

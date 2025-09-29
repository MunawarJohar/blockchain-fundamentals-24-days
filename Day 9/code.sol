// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract AccessModifiers {  
    // Public variable  
    string public name = "Munawar";  

    // Private variable  
    uint private secretCode = 1234;  

    // Internal variable  
    uint internal internalValue = 500;  

    // External function to set a new name  
    function setName(string calldata _newName) external {  
        name = _newName;  
    }  

    // Public function to get secret code indirectly  
    function getSecretCode() public view returns (uint) {  
        return secretCode;  
    }  

    // Internal function to get internal value  
    function getInternalValue() internal view returns (uint) {  
        return internalValue;  
    }  
}  

// Derived contract to demonstrate `internal` access  
contract DerivedAccess is AccessModifiers {  
    function accessInternalValue() public view returns (uint) {  
        return getInternalValue();  
    }  
}  

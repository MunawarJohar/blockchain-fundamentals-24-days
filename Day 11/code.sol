// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarConditions {  
    // Function to check if Munawar is eligible to vote  
    function checkVotingEligibility(uint age) public pure returns (string memory) {  
        if (age >= 18) {  
            return "Munawar is eligible to vote";  
        } else {  
            return "Munawar is not eligible to vote";  
        }  
    }  

    // Function to categorize Munawar’s experience level  
    function experienceLevel(uint years) public pure returns (string memory) {  
        if (years >= 10) {  
            return "Expert";  
        } else if (years >= 5) {  
            return "Intermediate";  
        } else {  
            return "Beginner";  
        }  
    }  

    // Function using a ternary operator  
    function isMunawarHappy(bool hasCoffee) public pure returns (string memory) {  
        

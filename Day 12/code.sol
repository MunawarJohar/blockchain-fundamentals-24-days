// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarLoops {  
    // Function to calculate the sum of an array using a `for` loop  
    function sumArray(uint[] memory numbers) public pure returns (uint) {  
        uint sum = 0;  
        for (uint i = 0; i < numbers.length; i++) {  
            sum += numbers[i];  
        }  
        return sum;  
    }  

    // Function to find the first even number in an array using a `while` loop  
    function findFirstEven(uint[] memory numbers) public pure returns (uint) {  
        uint i = 0;  
        while (i < numbers.length) {  
            if (numbers[i] % 2 == 0) {  
                return numbers[i];  
            }  
            i++;  
        }  
        return 0; // Return 0 if no even number is found  
    }  

    // Function to demonstrate a `do...while` loop  
    function demoDoWhile(uint n) public pure returns (uint) {  
        uint count = 0;  
        do {  
            count++;  
            n--;  
        } while (n > 0);  
        return count;  
    }  
}  

// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarArrays {  
    // Fixed-size array  
    uint[3] public fixedArray = [1, 2, 3];  

    // Dynamic array  
    uint[] public dynamicArray;  

    // Function to add an element to the dynamic array  
    function addElement(uint element) public {  
        dynamicArray.push(element);  
    }  

    // Function to remove the last element from the dynamic array  
    function removeLastElement() public {  
        require(dynamicArray.length > 0, "Array is empty.");  
        dynamicArray.pop();  
    }  

    // Function to get an element by index  
    function getElement(uint index) public view returns (uint) {  
        require(index < dynamicArray.length, "Index out of bounds.");  
        return dynamicArray[index];  
    }  

    // Function to get the length of the dynamic array  
    function getDynamicArrayLength() public view returns (uint) {  
        return dynamicArray.length;  
    }  
}  

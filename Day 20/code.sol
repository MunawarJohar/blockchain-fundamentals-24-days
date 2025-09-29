// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarEtherUnits {  
    // Function to return various Ether units  
    function getEtherUnits() public pure returns (uint, uint, uint) {  
        uint oneWei = 1 wei;  
        uint oneGwei = 1 gwei;  
        uint oneEther = 1 ether;  
        return (oneWei, oneGwei, oneEther);  
    }  

    // Function to calculate Ether to Wei conversion  
    function convertEtherToWei(uint etherAmount) public pure returns (uint) {  
        return etherAmount * 1 ether;  
    }  

    // Function to convert Wei to Ether  
    function convertWeiToEther(uint weiAmount) public pure returns (uint) {  
        return weiAmount / 1 ether;  
    }  
}  

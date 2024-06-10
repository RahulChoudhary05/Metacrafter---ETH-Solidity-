// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract CustomContract {
    // Stores the amount in Wei
    uint256 public value;

    // Sets the value variable with the given amount
    function updateValue(uint256 _value) public {
        value = _value;
    }
    
    // Returns the stored value in Wei
    function retrieveInWei() public view returns (uint256) {
        return value;
    }
    
    // Returns the stored value converted to Gwei(1 Gwei = 10^9 wei)
    function retrieveInGwei() public view returns (uint256) {
        return value / 1 gwei;
    }
    
    // Returns the stored value converted to Ether(1 ether = 10^18 wei)
    function retrieveInEther() public view returns (uint256) {
        return value / 1 ether;
    }
}

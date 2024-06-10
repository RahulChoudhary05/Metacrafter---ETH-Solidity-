// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MathOperations {
    //calculate the sum of two numbers
    function calculateSum(uint num1, uint num2) public pure returns (uint) {
        return num1 + num2;
    }

    //calculate the difference between two numbers
    function calculateDifference(uint num1, uint num2) public pure returns (uint) {
        require(num1 >= num2, "Difference would be negative");
        return num1 - num2;
    }

    //calculate the product of two numbers
    function calculateProduct(uint num1, uint num2) public pure returns (uint) {
        return num1 * num2;
    }

    //calculate the division of two numbers
    function calculateDivision(uint num1, uint num2) public pure returns (uint) {
        require(num2 != 0, "Cannot divide by zero");
        return num1 / num2;
    }
}

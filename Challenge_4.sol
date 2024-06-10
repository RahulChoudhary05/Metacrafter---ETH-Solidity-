// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract IterationTest {
    //calculate the sum of integers from 0 to 999
    function calculateSum() public pure returns (uint256) {
        uint256 total = 0;
        for (uint256 r = 0; r < 1000; r++) {
            total += r;
        }
        return total;
    }

    //calculate the factorial of 100
    function calculateFactorial() public pure returns (uint256) {
        uint256 product = 1;
        for (uint256 c = 1; c <= 100; c++) {
            product *= c;
        }
        return product;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ConditionalLogic {
    function evaluate(uint r) public pure returns (uint) {
        if (r < 10) {
            return 0;
        } else if (r < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function conditionalCheck(uint c) public pure returns (uint) {
        return c < 10 ? 2 : 3;
    }
}

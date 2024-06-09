// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

contract ShouldRevert {
    uint256 a = 0;
    function getA(uint256 b) public view returns(uint256){
        return a+b;
    }
}
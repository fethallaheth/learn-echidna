// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;


contract Assertions {
    uint256 public number;

    function add(uint256 _x) public {
        number += _x;
    }

    function get() public view returns(uint256 ){
        return number;
    } 

}
// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

contract Dapp {

    uint256 result;

    function add(uint256 _a, uint256 _b) public {
        result = _a + _b;
    }

    function getResult() public view returns(uint256){
        return result ;
    }
}
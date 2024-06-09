// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

contract Incrementor {
    uint256 public counter = 2 ** 200;
    event AssertionFailed(uint256 number);
    uint256 public newCounter; 
    function increment(uint256 val) public returns (uint256) {
        newCounter = counter;
        unchecked {
            counter += val;
        }
    }
    function calculte() public view returns(uint256 amount){
        return (counter - newCounter);

    }
}
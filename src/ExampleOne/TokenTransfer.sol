// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

contract NewOwnerContract {
    address public newOwner = msg.sender;

    modifier onlyNewOwner() {
        require(msg.sender == newOwner, "NewOwnerContract: Caller is not the owner.");
        _;
    }
}

contract PausableToken is NewOwnerContract {
    bool private _isPaused;

    function isPaused() public view returns (bool) {
        return _isPaused;
    }

    function pause() public onlyNewOwner {
        _isPaused = true;
    }

    function resume() public onlyNewOwner {
        _isPaused = false;
    }

    modifier whenNotPaused() {
        require(!_isPaused, "PausableToken: Contract is paused.");
        _;
    }
}

contract TokenTransfer is NewOwnerContract, PausableToken {
    mapping(address => uint256) public accountBalances;

    function performTransfer(address to, uint256 amount) public whenNotPaused onlyNewOwner {
        unchecked {
            accountBalances[msg.sender] -= amount;
            accountBalances[to] += amount;
        }
    }
}
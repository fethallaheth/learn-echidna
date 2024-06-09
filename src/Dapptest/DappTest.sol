// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {Dapp} from "./Dapp.sol";

contract DappTest is Dapp {
     Dapp dapp;

    constructor() {
        dapp = new Dapp();
    }

    function invariantHolds(uint256 _a, uint256 _b) public {
        dapp.add(_a,_b);
        require(dapp.getResult() >= _a );
    }
}
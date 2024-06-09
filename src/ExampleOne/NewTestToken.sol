// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {TokenTransfer} from  "./TokenTransfer.sol";

/// @dev Run the template with
///      ```
///      solc-select use 0.8.0
///      echidna template.sol
///      ```
contract NewTestToken is TokenTransfer {
    address echidnaTester = tx.origin;

    constructor()  {
        accountBalances[echidnaTester] = 10000;
    }

    function echidna_TestBalance() public view returns (bool) {
        // added the property
        return accountBalances[echidnaTester] == 10000;
    }
}
// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {Incrementor} from  "./Incrementor.sol";

contract IncrementorEchidna is Incrementor {

    function assert_CounterIsEqualOrBigger() public {
        uint256 amount = 25 ;
        increment(amount);
        assert(newCounter <= counter);
        calculte();
    }
}
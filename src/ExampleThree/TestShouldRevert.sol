// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {ShouldRevert} from "./ShouldRevert.sol" ;  

contract TestShouldRevert is ShouldRevert {
    bool z = false;

    function echidnarevert() public returns(bool){
        revert();
    }
    // this should fail but it not ??
    function echidnarevert_fail() public returns(bool){
        return z;
    }
    // this will be fail because echidna assertion ony accept return true
    // i dont know why it not fail
    function echidna_assertion_bool_failed() public returns(bool){
        return z;
    }

    function echidna_assertion_bool_pass() public returns(bool){
        return true;
    }
}
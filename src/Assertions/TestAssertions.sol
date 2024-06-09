// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {Assertions} from "./Assertions.sol" ;  

contract TestAssertions is Assertions {
   Assertions ass;
   event AssertionFailed(uint256 _x);

   constructor (){
    ass = new Assertions();
   }
   // yay it holds 
//    function checkInvariant(uint256 _x) public {
//         uint256 prev = ass.get();
//         ass.add(_x);
//         assert(ass.get() >= prev);
//    }
   
      function checkInvariant2(uint256 _x) public {
        uint256 prev = ass.get();
        ass.add(_x);
         // The following statement will always trigger a failure even if the execution ends with a revert
        emit AssertionFailed(_x);
        assert(ass.get() < prev);
   }

}
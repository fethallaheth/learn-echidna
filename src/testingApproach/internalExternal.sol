contract System {
    uint256 stateVar = 20;
    uint256 X = 10;
}

contract internalExternal is System {
    function echidna_state_greater_than_X() public returns (bool) {
        return stateVar > X;
    }
}
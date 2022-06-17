pragma solidity ^0.5.11;

import "./MintableToken.sol";

contract TestMintableToken is MintableToken {
    address echidna_caller = msg.sender;

    // update the constructor
    constructor() public MintableToken(10000) {
        owner = msg.sender;
    }

    // add the property
    function echidna_test_balance() public view returns (bool) {
        return balances[msg.sender] <= 10000;
    }
}

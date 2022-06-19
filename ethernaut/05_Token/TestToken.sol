pragma solidity ^0.6.0;

import "./Token.sol";

contract TestToken is Token {
    constructor() public Token(20) {
        //give 20 token to sender
        transfer(address(0x10000), 20);
    }

    function echidna_cant_get_more_than_20_token() public view returns (bool) {
        return balances[address(0x10000)] <= 20; //sender
    }
}

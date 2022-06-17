pragma solidity ^0.5.11;

import "./Token.sol";

contract TestToken is Token {
    address echidna_caller = msg.sender;

    constructor() public {
        paused(); // pause the contract
        owner = address(0x0); // lose ownership
    }

    // add the property
    function echidna_no_transfer() public view returns (bool) {
        return balances[echidna_caller] == 0;
    }

    function echidna_cannot_be_unpaused() public view returns (bool) {
        return is_paused;
    }
}

pragma solidity ^0.6.0;

import "./Fallback.sol";

contract TestFallback is Fallback {
    address payable echidna_caller = msg.sender; // == address(0x30000), the address that call the constructor

    constructor() public payable Fallback() {}

    // add the property
    function echidna_test_cannot_become_owner() public view returns (bool) {
        return owner != address(0x10000);
    }

    function echidna_test_cannot_empty_funds() public view returns (bool) {
        return address(this).balance != 0;
    }
}

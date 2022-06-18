pragma solidity ^0.6.0;

import "./Fallout.sol";

contract TestFallout is Fallout {
    address payable echidna_caller = msg.sender; // == address(0x30000), the address that call the constructor

    constructor() public payable Fallout() {}

    function echidna_test_cannot_become_owner() public view returns (bool) {
        return owner != address(0x10000);
    }
}

pragma solidity ^0.6.0;

import "./Delegation.sol";

contract MiddleContract {
    Test test = Test(0x1234); // address of Test

    function callPwn() public {
        address(test).call(abi.encodeWithSignature("pwn()"));
    }
}

contract Test is Delegation {
    MiddleContract mid;

    //create a Delegate contract at random address
    constructor() public Delegation(address(new Delegate(address(0x40000)))) {
        mid = new MiddleContract();
    }

    function echidna_can_become_owner() public view returns (bool) {
        return owner != address(mid); //mid becomes the owner
    }
}

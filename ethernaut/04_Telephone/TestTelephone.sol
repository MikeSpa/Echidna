pragma solidity ^0.6.0;

import "./Telephone.sol";

contract MiddleContract {
    TestTelephone phone = TestTelephone(0x1234); // address of TestTelephone

    function changeOwnerMid(address _newOwner) public {
        phone.changeOwner(_newOwner);
    }
}

contract TestTelephone is Telephone {
    MiddleContract mid;

    constructor() public payable Telephone() {
        mid = new MiddleContract();
    }

    function echidna_owner_doesnt_change() public returns (bool) {
        return owner == address(0x30000); //deployer
    }

    function echidna_cant_become_owner() public returns (bool) {
        return owner != address(0x10000); //sender
    }
}

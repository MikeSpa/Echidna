pragma solidity ^0.6.0;

import "./Vault.sol";

contract Test is Vault {
    constructor() public Vault(bytes32("love")) {}

    function echidna_cant_be_unlock() public view returns (bool) {
        return locked == true;
    }
}

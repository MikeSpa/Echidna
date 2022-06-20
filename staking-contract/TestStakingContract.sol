// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./StakingContract.sol";
import "./ProjectToken.sol";
import "./AaveLending.sol";

contract Test {
    StakingContract stakingContract;

    constructor() {
        // Create the target contract.
        stakingContract = new StakingContract(
            address(new ProjectToken()),
            address(new AaveLending(address(0x50000)))
        );
    }

    function echidna_test_owner() public view returns (bool) {
        return stakingContract.owner() == address(this);
    }
}

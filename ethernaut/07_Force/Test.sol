pragma solidity ^0.6.0;

import "./Force.sol";

contract MiddleContract {
    function selfDestruct(address payable _to) public payable {
        selfdestruct(_to);
    }
}

contract Test is Force {
    MiddleContract mid;

    constructor() public Force() {
        mid = new MiddleContract();
    }

    function echidna_cant_receive_ether() public view returns (bool) {
        return address(this).balance == 0;
    }
}

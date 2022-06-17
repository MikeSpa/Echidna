pragma solidity ^0.5.11;

import "./Token.sol";

contract MintableToken is Token {
    uint256 totalMinted;
    uint256 totalMintable;

    constructor(uint256 _totalMintable) public {
        totalMintable = _totalMintable;
    }

    function mint(uint256 value) public isOwner {
        require(uint256(value) + totalMinted < totalMintable);
        totalMinted += uint256(value);
        balances[msg.sender] += value;
    }
}

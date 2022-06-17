pragma solidity ^0.5.11;

import "./Token.sol";

contract MintableToken is Token {
    int256 totalMinted;
    int256 totalMintable;

    constructor(int256 _totalMintable) public {
        totalMintable = _totalMintable;
    }

    function mint(uint256 value) public isOwner {
        require(int256(value) + totalMinted < totalMintable);
        totalMinted += int256(value);
        balances[msg.sender] += value;
    }
}

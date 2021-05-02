pragma solidity ^0.8.0;

import "../ERC20/ERC20.sol";


contract MetaCoin is ERC20{
    // modify token name
    string public constant NAME = "MetaCoin";
    // modify token symbol
    string public constant SYMBOL = "MET";
    // modify initial token supply
    uint256 public constant INITIAL_SUPPLY = 10000000; // 10000000 tokens

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20(NAME, SYMBOL) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
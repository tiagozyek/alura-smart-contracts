// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./IERC20.sol";

abstract contract ERC20 is IERC20 {

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner, address indexed spender, uint256 value
    );

    uint256 public totalSupply = 0;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    string public name;
    string public symbol;
    uint8 public decimals;

    constructor(string memory _name, string memory _symbol, uint8 _decimals) {
        initializeToken(1000000000);
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }

    function initializeToken(uint256 _totalSupply) public {
    totalSupply = _totalSupply;
}

}
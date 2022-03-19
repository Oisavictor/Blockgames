// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract BGToken is ERC20 {
    
    constructor() ERC20 ("BG Token", "BGT") {
        _mint(msg.sender, 100*10**4);
        
    }
    
    function decimals() public view virtual override returns (uint8) {
        return 15;
    }

    function buyToken(address receiver, uint256 amount) external virtual {
        require(receiver != address(0), "ERC20: transfer to the zero address");
        require(amount != 0, "ERC20: transfer amount ");
        _mint(receiver, amount);

    }

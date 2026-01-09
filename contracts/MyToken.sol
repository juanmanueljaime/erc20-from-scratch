// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ERC20.sol";

/**
 * @title MyToken
 * @author Juan Manuel Jaime
 * @notice ERC-20 token for educational and security analysis purposes
 */
contract MyToken is ERC20 {

    /**
     * @notice Deploys the token and mints initial supply to deployer
     */
    constructor()
        ERC20("MyToken", "MTK")
    {
        uint256 initialSupply = 1_000_000 * 10 ** decimals();
        _mint(msg.sender, initialSupply);
    }
}


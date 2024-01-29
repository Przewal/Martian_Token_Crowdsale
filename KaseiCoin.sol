/*
Kasei Coin Mintable
*/

pragma solidity ^0.5.0;

//  Import the following contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// Create a constructor for the KaseiCoin contract and have the contract inherit the libraries that you imported from OpenZeppelin.

contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    constructor (
        // Inside the KaseiCoin contract, add a constructor with the following parameters: name, symbol, and initial_supply
        string memory name,
        string memory symbol,
        uint initial_supply
    )
        // As part of the constructor definition, add a call to the constructor of the ERC20Detailed contract, passing the parameters name, symbol, and 18
        ERC20Detailed(name, symbol, 18)
        public
    {
        mint(msg.sender, initial_supply);
    }

}
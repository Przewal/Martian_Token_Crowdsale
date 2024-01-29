# Martian Token Crowdsale

## Overview

This Solidity smart contract implements a token crowdsale for the KaseiCoin cryptocurrency, utilizing various features from the OpenZeppelin library. The KaseiCoinCrowdsale contract inherits functionalities from Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, and RefundableCrowdsale contracts. Additionally, a deployment contract, KaseiCoinCrowdsaleDeployer, is provided to facilitate the deployment of the crowdsale contract.

The files **`KaseiCoin.sol`** and **`KaseiCoinCrowdsale.sol`** contains all the steps required to set up the smart contract.

The folder **`Executions`** contains screenshots of contract deployment and interactions.

## Contracts

### 1. KaseiCoinCrowdsale

This contract orchestrates the token crowdsale by combining the following OpenZeppelin contracts:

- **Crowdsale:** Base contract for managing the sale of a token.
- **MintedCrowdsale:** Extension allowing the crowdsale to mint tokens as purchases are made.
- **CappedCrowdsale:** Ensures that the total amount raised does not exceed a predefined cap.
- **TimedCrowdsale:** Restricts the crowdsale to a specific time frame.
- **RefundableCrowdsale:** Provides the ability to refund users if the crowdsale is unsuccessful.

#### Constructor Parameters:

- `rate`: The rate of conversion between wei and tokens.
- `wallet`: The address that will receive the funds collected during the crowdsale.
- `token`: The KaseiCoin token contract.
- `goal`: The funding goal for the crowdsale.
- `open`: The opening time of the crowdsale.
- `close`: The closing time of the crowdsale.

### 2. KaseiCoinCrowdsaleDeployer

This contract facilitates the deployment of the KaseiCoinCrowdsale contract by creating instances of the KaseiCoin token and the crowdsale contract. It also assigns the crowdsale contract as a minter for the KaseiCoin token before renouncing its own minter role.

#### Constructor Parameters:

- `name`: The name of the KaseiCoin token.
- `symbol`: The symbol of the KaseiCoin token.
- `wallet`: The address that will receive the funds collected during the crowdsale.
- `goal`: The funding goal for the crowdsale.

### Important Notes

- `Metamask` environment (account imported from Ganache) is connected to the RemixIDE for the application. 
- The deployment assumes the use of OpenZeppelin contracts from version 2.5.0.
- The KaseiCoinCrowdsaleDeployer contract should be deployed to initiate the deployment of the KaseiCoinCrowdsale contract.

## Usage

1. Deploy the KaseiCoinCrowdsaleDeployer contract by providing the necessary parameters.
2. The deployer contract will create instances of the KaseiCoin token and the KaseiCoinCrowdsale contract.
3. The KaseiCoinCrowdsale contract will be assigned as a minter for the KaseiCoin token.
4. The deployer contract will renounce its minter role.


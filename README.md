# Hardhat Tutorial
Hardhat is a tool to build Decentralized Application \(DApps\) in Ethereum Network.

## Purpose
This repository is to learn about the how to develop using smart contract programming language\(Solidity\) and hardhat itself.

## Development Blockchains
Hardhat has its own built-in Hardhat Network, which is a local Ethereum network designed for development. This network allows developer to deploy the contracts, run testing and debug codes.

## Hardhat Architecture
Hardhat is consists of 2 main concepts: Tasks and Plugins.

### Tasks
Every time running hardhat from the CLI is running a task. For example, `npx hardhat compile` is running a `compile` task. Also, developers can create their own tasks using hardhat.

### Plugins
Although it has its own built-in defaults tools to use, it does not matter what tools does the developer using. For the built-in tools, they all can be overriden. And most of the time the way to use a given tool is by consuming a plugin that integrates it into Hardhat.

Ethers.js and Waffle has plugin for hardhat which allows developers to interact with Ethereum and test the contracts.
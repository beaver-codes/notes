# Blockchain Networks

* What is a network
* Mainnet vs testnet vs local
* Order in which you probably should use them

## Local

* Develop `truffle develop`
* Ganache-ui `truffle console --network ganache`
* Pre-funded accounts with native coins
* Unittests
* Demo

## Test Network

* Ethereum -> Rinkeby
* Avalanche -> Fuji
* Faucet to get native coins
* Demo `truffle console --network avaxText`

## Mainnet

* This is where the fun begins
* You need to pay to get native coins
* It is expensive to test here :)

## Mainnet fork

* You need to test within a ecosystem
* DeFi
* Other NFTs
* e.g. Aggregator
* Mock them up in previous steps
* Demo
* `ganache-cli --fork https://api.avax.network/ext/bc/C/rpc`
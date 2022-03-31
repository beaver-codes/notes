# Blockchain Primer + Roadmap for Devs

## WebX.0

- Web1.0 - Decentralized Information
- Web2.0 - Decentralized Publishing
- Web3.0 - Decentralized Finance

## Architecture Difference

### Web2.0

- React, Vue, Angular, mobile apps ...

- Runs primary in browsers

- More logic in frontend than backend

- API requests for backend - REST

```
* [ FE ] -> [ BE ] -> [ DB ]
* [ FE ] -> [ Firebase DB ]
*        -> [ Firebase Cloud Functions ]
```

### Web3.0

- Not that different

- Still using React, Vue, Angular ...

- [ FE ] -> [ Blockchain ]

- DApp - Decentralized App
    - No central Backend/DB
    - More theory than practice

- API requests for blockchain node - RPC - Remote Procedure Call

## Blockchain

- Data storage layer combined with secure execution layer
    - instead of e.g. MariaDB or PostgreSQL
    - instead of your backend

- Cons
    - Cumbersome to connect
    - You can't patch a bug in smartcontract
    - Reading rate limited
    - No aggregated queries
    - Writes takes long time - seconds, minutes all the way to forever
    - User has to pay gas for every write

- Pros
    - Freedom to connect
    - User ownership
    - Transactions are atomic

### Authentication

- Way simpler comper to traditional web2
- Owned by the end user

## Roadmap

- Learn about blockchain
    - Consensus mechanisms - Proof of Work, Proof of Stake
    - What are the most popular blockchains?
    - Which are programable and what languages are used?
    - Layer 1 vs Layer 2 blockchain

- Learn Solidity
    - Most widely used programming language for EVM (Ethereum Virtual Machine) compatible chains
    - [CryptoZombies](https://cryptozombies.io/)

- Create and deploy(!) a smartcontract
    - Check tools like Truffle and/or HardHat
    - Maybe simple ERC20 token
    - Deploy to test network - e.g. Rinkeby (Eth), Fuji (Avax)
    - Use console to interact with contract

- WebApp (e.g. React) that reads contract
    - For example total supply of ERC20 tokens
    - Use tool like [Infura](https://infura.io/) to get "connection" to blockchain

- WebApp that writes to contract
    - Handle connecting of a wallet
    - Handle edge cases (no plugin, different network in wallet)
    - Submit write transaction - e.g. mint ERC20 token

- Profit :)

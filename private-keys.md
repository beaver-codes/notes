# Private Keys and Mnemonics in Ethereum

## Intro

- Why care?

- Asymetric Cryptography

- Used for transaction signature in crypto

- Usage in Wallets

## Private Key

- 64 random HEX (10 -> 0-9, 2 -> 0-1, 16 -> 0-F)

- e.g. `0000000000000000000000000000000000000000000000000000000000000001`


- Lots of them

## Public Key

- Derived from private key

- Elliptic Curve Digital Signature Algorithm (ECDSA)

- Last 40 characters of the public key is the address

## Signature

- Not Encryption

- Random number included to increase security

- Can be used to derive Public key

## Mnemonics

- A way to derive multiple private keys

- More human friendly

- Pros & Cons

- Password in Metamask

- e.g.

```
crisp pen normal material wear soccer solution grain thumb vendor measure spirit
```


## Coding Time!

- Private key generator

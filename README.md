# ERC-20 Doorman

This Ethereum contract is an ERC-20 compliant token with a built access control list. The contract's doorman accepts tips. Tips over an arbitrary amount get the sender's address added to a list. Higher tips result in addition to a VIP list.

### Installation

Requirements:
```sh
$ npm install -g truffle
$ npm install -g ethereumjs-testrpc
```

testrpc is used to simulate the ethereum blockchain in a dev environment.
truffle will compile and migrate our smart contracts to the testrpc blockchain.

In its own terminal window run:
```sh
$ testrpc --gasLimit 100000000 -b 3
```

After cloning the repository,
```sh
$ cd erc20-lottery
$ npm install
$ truffle compile && truffle migrate && npm run dev
```

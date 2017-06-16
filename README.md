# ERC-20 GateKeeper

This Ethereum contract is an ERC-20 compliant token with a built access control list. The contract's doorman accepts tips. Tips over an arbitrary amount get the sender's address added to a list. Higher tips result in addition to a VIP list. This doorman only requires that you proof you own a certain amount of currency. It does that by requiering the user to send some amount of tokens to the doorman. The doorman subtracts 1 as a tip and returns the balance to the sender.

This works as a 1 time proof that the user desiring to join some access list has some arbitrary amount of collateral. For example, a smart contract casino may impose a barrier to entry for each round of a game of lottery. Users are permitted to purchase a ticket after they have proven to the doorman they control a certain number of tokens. They are then added to the list of players.

This is works as a system of credit. If all debts are settled the same round tickets are purchased if would guarantee users are unable to transfer balances between each other, effectively double spending the same tokens to achieve access.

This contract is intended to be modified as a standalone tool. It can be configured to hold the currency a number of blocks before permitting the true owner to withdraw. This way, rounds can extend multiple blocks. For example, a lottery may require X amount be escrowed

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

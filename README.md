# ZKU Background Assignment

## Your sure your solid with Solidity?

The files in this repository are for the Solidity code part of ZKU Background Assignment

### Hello World

The Hello World solidity code is in the root directory of this repository

* Filename: HelloWorld.sol

### Ballot Solidity Assignment

The solidity files in this submission are the original Ballot.sol, Ballot2.sol, and Ballot2b.sol.
These are instances of the Ballot contract that adhere to functionality of the original, but differ
in the gas they consume, when given the task of enabling 10 voters to cast a vote for a proposal.

* Ballot.sol
  * This is the original Ballot contract with no changes
  * Method used for giveRightToVote: One voter is submitted at a time
  * Gas used to enable 10 voters: 48657 each voter, times 10 = 486570 gas

* Ballot2.sol
  * There are two updates from the original Ballot.sol
    * Creation and use of a function modifier for giveRightToVote
    * Change the parameter in giveRightToVote to an array of address
  * Method used for giveRightToVote: Submit a batch to 10 voters
  * Gas used to enable 10 voters: 280135 gas

* Ballot2b.sol
  * There are three updates from the original Ballot.sol
    * Creation and use of a function modifier for giveRightToVote
    * Change the parameter in giveRightToVote to an array of address
    * Removal of check to see of a voter already voted
  * Method used for giveRightToVote: Submit a batch to 10 voters
  * Gas used to enable 10 voters: 257125 gas

#### Discussion

The original Ballot.sol allows a voter to delegate before being enabled to vote. This results in a voter structure of:
* weight: 0
* voted: true
* delegate: (address of delegate)
* vote: 0

This does not add to the weight of the delegate.

The effect is if a voter with the above structure is submitted to
giveRightToVote, nothing happens. The voter gets no weight and is unable to vote. The same is true with the Ballot2.sol version.

In the Ballot2b.sol version, when the voter is submitted to giveRightToVote the weight is changed to 1. But given that the voted flag is true, the voter cannot vote and cannot delegate. Also if resubmitting to giveRightToVote, no action will be taken.

#### Screenshots

The screenshots for the three versions of the Ballot contract are in the screenshots directories Ballot-original, Ballot2-update and Ballot2b-update.

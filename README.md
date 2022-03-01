# ZKU Background Assignment

## Your sure your solid with Solidity?

The files in this repository are for the Solidity code part of ZKU Background Assignment

### Hello World

The Hello World solidity code is in the root directory of this repository

* Filename: HelloWorld.sol

### Ballot Solidity Assignment

* Original Ballot.sol code
  * Directory: orig-ballot
  * Filename: Ballot.sol

* Updated ballot contract that uses less gas, for giveRightToVote
  * Directory: updated-ballot
  * Filename: Ballot2.sol
  * Changes:
    * Tried creating a declared function modifier - not useful
	* Eliminated checking for voter weight, since it does not effect contract function
	* Eliminated checking if the voter already voted, since it is check elsewhere in two other functions

* Screenshots of 10 giveRightToVote runs
  * png files
  * Runs with Original Ballot.sol in directory: screenshots/orig-ballot
  * Runs with Updated Ballot2.sol in directory: screenshots/updated-ballot


// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

// Solidity contract to say hi and store a number

contract HelloWorld {
    // declare public variables
    string public sayHi = "Hello World!";
    uint public myNum;

    /* change the myNum based user input */
    function set(uint num) public {
        myNum = num;
    }

    /* retrieve the current value of myNum */
    function get() public view returns (uint) {
        return myNum;
    }

}
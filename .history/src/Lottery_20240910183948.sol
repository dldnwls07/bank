// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
   
    constructor() {
        manager = msg.sender;
    }
   
    function play() public payable {
        require(msg.value >= 1 ether)
    }

    // Function to allow the manager to withdraw a specified amount
    function withdraw(uint256 _value) public {
        require(msg.sender == manager);
        (bool success, ) = payable(manager).call{value: _value}("");
        require(success);
    }
}

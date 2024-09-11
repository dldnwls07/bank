// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
   
    constructor() {
        manager = msg.sender;
    }
   
    function play() public payable returns (bool) {
        require(msg.value > 0.01 ether);
        if 
    }

    // Function to allow the manager to withdraw a specified amount
    function withdraw(uint256 _value) public {
        require(msg.sender == manager);
        (bool success, ) = payable(manager).call{value: _value}("");
        require(success);
    }
}

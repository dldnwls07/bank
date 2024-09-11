// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Lottery {
    address public manager;
}

constructor() {
    manager = msg.sender;
}
function withdraw(uint256 _value) public {
        require(msg.sender == manager);
        (bool success, ) = payable(msg.sender).call{value: _value}("");
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Lottery {
    address public manager;
}

constructor() {
    msg.sender = manager;
}
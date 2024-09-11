// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import { Lottery } from "src/Lottery.sol";

contract LotteryHack{
    Lottery lottery;

    constructor(address _lottery) {
        lottery = Lottery(_lottery);
    }
    function desposit() public payable {
        
    }
    function withdraw(uint256 _amount) public {
        require(_amount <= address(this).balance);
        payable(msg.sender).transfer(_amount);
    }
}

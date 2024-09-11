// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import { Lottery } from "src/Lottery.sol";

contract LotteryHack{
    Lottery lottery;

    constructor(address _lottery) {
        lottery = Lottery(_lottery);
    }
    
}

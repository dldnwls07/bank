// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Lottery} from "../src/Lottery.sol";

contract CounterTest is Test {
    Lottery public lottery;

    function setUp() public {
        lottery = new Lottery();
    }

    function test_play() public{
        bool result = lottery.play{value: 0.02 ether}();
        assertTrue(result);
    }
}
    

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Lottery} from "../src/Lottery.sol";

contract CounterTest is Test {
    Lottery public lottery;

    function setUp() public {
        lottery = new Counter();
        lottery.setNumber(0);
    }

    function test_Increment() public {
        lottery.setNumber(115792089237316195423570985008687907853269984665640564039457584007913129639935);
        lottery.increment();
        console.log("number",lottery.number());
        assertEq(lottery.number(), 2);
    }
    function test_Decrement() public {
        lottery.setNumber(1);
        lottery.decrement();
        lottery.decrement();
        console.log("number",lottery.number());
        assertEq(lottery.number(), 0);
    }
    function test_SetNumber() public {
        lottery.setNumber(1);
        assertEq(lottery.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        lottery.setNumber(x);
        assertEq(lottery.number(), x);
    }
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Lottery.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.setNumber(115792089237316195423570985008687907853269984665640564039457584007913129639935);
        counter.increment();
        console.log("number",counter.number());
        assertEq(counter.number(), 2);
    }
    function test_Decrement() public {
        counter.setNumber(1);
        counter.decrement();
        counter.decrement();
        console.log("number",counter.number());
        assertEq(counter.number(), 0);
    }
    function test_SetNumber() public {
        counter.setNumber(1);
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
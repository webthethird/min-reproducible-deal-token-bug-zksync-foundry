// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {MockERC20} from "../src/MockERC20.sol";

contract DealerTest is Test {
    MockERC20 public mock;

    function setUp() public {
        mock = new MockERC20("Mock ERC20", "MERC", 18);
    }

    function test_DealTokens() public {
        deal(address(mock), address(this), 1 ether);
        assertEq(mock.balanceOf(address(this)), 1 ether);
    }
}

// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.16;

// contracts
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    uint8 public _decimals;

    constructor(string memory name, string memory symbol, uint8 decimals_) ERC20(name, symbol) {
        _decimals = decimals_;
    }

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
}

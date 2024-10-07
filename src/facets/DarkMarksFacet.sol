// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {LibERC20} from "../../lib/cu-osc-common-tokens/src/libraries/LibERC20.sol";
import {LibContractOwner} from "../../lib/cu-osc-diamond-template/src/libraries/LibContractOwner.sol";
import {ERC20Facet} from "../../lib/cu-osc-common-tokens/src/facets/ERC20Facet.sol";

contract DarkMarksFacet is ERC20Facet {
    function burn(uint256 value) external {
        LibERC20.burn(msg.sender, value);
    }

    function burnFrom(address account, uint256 value) external {
        LibERC20.burn(account, value);
    }

    function mint(address account, uint256 amount) external returns (bool) {
        LibERC20.enforceIsControllerOrOwner();
        return LibERC20.mint(account, amount);
    }

    function setERC20Controller(address newController) external {
        LibContractOwner.enforceIsContractOwner();
        LibERC20.setController(newController);
    }

    function getERC20Controller() external view returns (address) {
        return LibERC20.erc20Storage().controller;
    }

    function approve(
        address spender,
        uint256 amount
    ) public virtual override returns (bool) {
        spender;
        amount;
        revert("Unsupported");
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        sender;
        recipient;
        amount;
        revert("Unsupported");
    }

    function transfer(
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        recipient;
        amount;
        revert("Unsupported");
    }

    function increaseAllowance(
        address spender,
        uint256 addedValue
    ) public virtual override returns (bool) {
        spender;
        addedValue;
        revert("Unsupported");
    }

    function decreaseAllowance(
        address spender,
        uint256 subtractedValue
    ) public virtual override returns (bool) {
        spender;
        subtractedValue;
        revert("Unsupported");
    }
}

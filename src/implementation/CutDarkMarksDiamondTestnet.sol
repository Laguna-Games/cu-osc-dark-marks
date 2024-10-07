// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {CutDiamond} from "../../lib/cu-osc-diamond-template/src/diamond/CutDiamond.sol";
import {ERC20Fragment} from "../../lib/cu-osc-common-tokens/src/implementation/ERC20Fragment.sol";
import {ERC20DebugFragment} from "../../lib/cu-osc-common-tokens/src/implementation/ERC20DebugFragment.sol";
import {DarkMarksFragment} from "./DarkMarksFragment.sol";
import {LibDiamond} from "../../lib/cu-osc-diamond-template/src/libraries/LibDiamond.sol";

contract CutDarkMarksDiamondTestnet is
    CutDiamond,
    ERC20Fragment,
    ERC20DebugFragment,
    DarkMarksFragment
{
    function xaimig_getDiamondStorage(
        bytes4[] memory supportedInterfacesKeys
    )
        external
        view
        returns (
            address contractOwner,
            bytes4[] memory supportedInterfaces,
            address[] memory facetAddresses,
            LibDiamond.FacetFunctionSelectors[] memory facetFunctionSelectors,
            bytes4[] memory selectors,
            LibDiamond.FacetAddressAndPosition[] memory facetAddressAndPositions
        )
    {}

    function xaimig_getERC20BasicStorage()
        external
        view
        returns (
            string memory name,
            string memory symbol,
            uint256 totalSupply,
            address controller
        )
    {}

    function xaimig_getERC20Balances(
        address[] memory balancesKeys
    ) external view returns (uint256[] memory balances) {}

    function xaimig_setERC20Balances(
        address[] memory balancesKeys,
        uint256[] memory balances
    ) external {}
}

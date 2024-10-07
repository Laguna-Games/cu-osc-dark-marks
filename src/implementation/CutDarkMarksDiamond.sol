// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {CutDiamond} from "../../lib/cu-osc-diamond-template/src/diamond/CutDiamond.sol";
import {ERC20Fragment} from "../../lib/cu-osc-common-tokens/src/implementation/ERC20Fragment.sol";
import {DarkMarksFragment} from "./DarkMarksFragment.sol";

contract CutDarkMarksDiamond is CutDiamond, ERC20Fragment, DarkMarksFragment {}

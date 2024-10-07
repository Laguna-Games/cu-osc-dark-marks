// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DarkMarksFragment {
    function burn(uint256 value) external {}

    function burnFrom(address account, uint256 value) external {}

    function mint(address account, uint256 amount) external returns (bool) {}

    function setERC20Controller(address newController) external {}

    function getERC20Controller() external view returns (address) {}

    /// @notice Unsupported
    // function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {}

    /// @notice Unsupported
    // function transfer(address recipient, uint256 amount) public returns (bool) {}
}

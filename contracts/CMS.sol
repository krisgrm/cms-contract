// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract CMS {

    event StateChange(
        address author,
        bytes data
    );

    function stateChange(bytes calldata data_) external {
        emit StateChange(msg.sender, data_);
    }

}
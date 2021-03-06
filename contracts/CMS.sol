// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract CMS {

    event StateChange(
        address author,
        bytes data
    );

    function stateChange(bytes[] calldata data_) external {
        for (uint256 i_ = 0; i_ < data_.length; i_++) {
            emit StateChange(msg.sender, data_[i_]);
        }
    }

}
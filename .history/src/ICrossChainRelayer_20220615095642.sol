// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

interface ICrossChainRelayer {

    struct Call {
        address target;
        bytes data;
        uint value;
    }

    event Relayed(
        uint256 indexed nonce,
        Call[] calls
    );

    function relayCalls(Call[] calldata calls) external;

}
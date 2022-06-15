// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

import "./ICrossChainRelayer.sol";

interface ICrossChainReceiver {
    event Executed(
        uint256 indexed nonce,
        ICrossChainRelayer.Call[] calls
    );
    
    event RelayerSet(
        address indexed relayer,
        uint256 indexed chainId
    );

    function relayCalls(ICrossChainRelayer.Call[] calldata calls) external;
    function relayer() external view returns (address);
    function relayerChainId() external view returns (uint256);

}
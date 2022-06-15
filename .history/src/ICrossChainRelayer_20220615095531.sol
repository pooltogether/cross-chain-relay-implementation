pragma solidity ^0.8.6;

interface ICrossChainRelayer {

    struct Call {
        address target;
        bytes data;
        uint value;
    }

    function relayCalls(Call[] calldata calls) external;
}
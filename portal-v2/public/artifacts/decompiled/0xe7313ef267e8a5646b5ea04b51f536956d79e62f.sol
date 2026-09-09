// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.9.2
///
/// @notice           This contract was decompiled using the heimdall-rs decompiler.
///                     It was generated directly by tracing the EVM opcodes from this contract.
///                     As a result, it may not compile or even be valid solidity code.
///                     Despite this, it should be obvious what each function does. Overall
///                     logic should have been preserved throughout decompiling.
///
/// @custom:github    You can find the open-source decompiler here:
///                       https://heimdall.rs

contract DecompiledContract {
    address public owner;
    
    
    /// @custom:selector    0x51cff8d9
    /// @custom:signature   withdraw(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function withdraw(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(msg.sender) == (address(owner / 0x01)), "Not owner");
        var_b = address(this);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_70a08231(var_b); // staticcall
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_f == (var_f));
        address var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_a9059cbb(var_d); // call
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_f == (var_f));
    }
    
    /// @custom:selector    0xb715a3a4
    /// @custom:signature   Unresolved_b715a3a4(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_b715a3a4(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
}
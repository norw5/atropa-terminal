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
    
    
    /// @custom:selector    0x3bd8dc70
    /// @custom:signature   Unresolved_3bd8dc70(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_3bd8dc70(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x921bc9a18eaf7299ae42c1cc416ef070b04ef81e).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x921bc9a18eaf7299ae42c1cc416ef070b04ef81e).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xca803da0df03c7e0897ff09bc53369654be0e3e7;
        (bool success, bytes memory ret0) = address(0x921bc9a18eaf7299ae42c1cc416ef070b04ef81e).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xca803da0df03c7e0897ff09bc53369654be0e3e7).code.length);
        (bool success, bytes memory ret0) = address(0xca803da0df03c7e0897ff09bc53369654be0e3e7).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x1dc6a761
    /// @custom:signature   Unresolved_1dc6a761(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_1dc6a761(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x51160f352ed148c89d48dfe6384edd07afa24e0e).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x51160f352ed148c89d48dfe6384edd07afa24e0e).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xe37acc54711562510fafc45d8199ee329ebbcedd;
        (bool success, bytes memory ret0) = address(0x51160f352ed148c89d48dfe6384edd07afa24e0e).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xe37acc54711562510fafc45d8199ee329ebbcedd).code.length);
        (bool success, bytes memory ret0) = address(0xe37acc54711562510fafc45d8199ee329ebbcedd).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x79a50af0
    /// @custom:signature   Unresolved_79a50af0(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_79a50af0(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0x51160f352ed148c89d48dfe6384edd07afa24e0e;
        (bool success, bytes memory ret0) = address(0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0x51160f352ed148c89d48dfe6384edd07afa24e0e).code.length);
        (bool success, bytes memory ret0) = address(0x51160f352ed148c89d48dfe6384edd07afa24e0e).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x3156ce87
    /// @custom:signature   Unresolved_3156ce87(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_3156ce87(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xdb4ebeafb23eca5275821ab0d87c7f6fa5514ea4).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0xdb4ebeafb23eca5275821ab0d87c7f6fa5514ea4).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xd33358f1b3130e2e9715c5992028d9de384544e8;
        (bool success, bytes memory ret0) = address(0xdb4ebeafb23eca5275821ab0d87c7f6fa5514ea4).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xd33358f1b3130e2e9715c5992028d9de384544e8).code.length);
        (bool success, bytes memory ret0) = address(0xd33358f1b3130e2e9715c5992028d9de384544e8).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x8fe82084
    /// @custom:signature   Unresolved_8fe82084(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_8fe82084(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xd33358f1b3130e2e9715c5992028d9de384544e8).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0xd33358f1b3130e2e9715c5992028d9de384544e8).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0x7ba907a5d308024e2a2010ea60318b834c1d8e9e;
        (bool success, bytes memory ret0) = address(0xd33358f1b3130e2e9715c5992028d9de384544e8).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0x7ba907a5d308024e2a2010ea60318b834c1d8e9e).code.length);
        (bool success, bytes memory ret0) = address(0x7ba907a5d308024e2a2010ea60318b834c1d8e9e).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0xb744f2b4
    /// @custom:signature   Unresolved_b744f2b4(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_b744f2b4(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x1c27fd7ab4faa8141119484e00d2455851639c2b).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x1c27fd7ab4faa8141119484e00d2455851639c2b).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xdb4ebeafb23eca5275821ab0d87c7f6fa5514ea4;
        (bool success, bytes memory ret0) = address(0x1c27fd7ab4faa8141119484e00d2455851639c2b).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xdb4ebeafb23eca5275821ab0d87c7f6fa5514ea4).code.length);
        (bool success, bytes memory ret0) = address(0xdb4ebeafb23eca5275821ab0d87c7f6fa5514ea4).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0xdaea46b9
    /// @custom:signature   Unresolved_daea46b9(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_daea46b9(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xf5f1e1b45524cf6919e7ce3eddb83569ec452aea).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0xf5f1e1b45524cf6919e7ce3eddb83569ec452aea).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0x921bc9a18eaf7299ae42c1cc416ef070b04ef81e;
        (bool success, bytes memory ret0) = address(0xf5f1e1b45524cf6919e7ce3eddb83569ec452aea).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0x921bc9a18eaf7299ae42c1cc416ef070b04ef81e).code.length);
        (bool success, bytes memory ret0) = address(0x921bc9a18eaf7299ae42c1cc416ef070b04ef81e).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x5ae9dea5
    /// @custom:signature   Unresolved_5ae9dea5(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_5ae9dea5(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xe37acc54711562510fafc45d8199ee329ebbcedd).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0xe37acc54711562510fafc45d8199ee329ebbcedd).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xc7145e1290b1d1221aba5ae48d4ace17c6be088f;
        (bool success, bytes memory ret0) = address(0xe37acc54711562510fafc45d8199ee329ebbcedd).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xc7145e1290b1d1221aba5ae48d4ace17c6be088f).code.length);
        (bool success, bytes memory ret0) = address(0xc7145e1290b1d1221aba5ae48d4ace17c6be088f).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x51cff8d9
    /// @custom:signature   withdraw(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function withdraw(address arg0) public payable {
        require(arg0 == (address(arg0)));
        address var_b = address(this);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_70a08231(var_b); // staticcall
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
        address var_f = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_a9059cbb(var_f); // call
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
    }
    
    /// @custom:selector    0x079b7382
    /// @custom:signature   Unresolved_079b7382(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_079b7382(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x7ba907a5d308024e2a2010ea60318b834c1d8e9e).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x7ba907a5d308024e2a2010ea60318b834c1d8e9e).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xf5f1e1b45524cf6919e7ce3eddb83569ec452aea;
        (bool success, bytes memory ret0) = address(0x7ba907a5d308024e2a2010ea60318b834c1d8e9e).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xf5f1e1b45524cf6919e7ce3eddb83569ec452aea).code.length);
        (bool success, bytes memory ret0) = address(0xf5f1e1b45524cf6919e7ce3eddb83569ec452aea).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0x887dc955
    /// @custom:signature   Unresolved_887dc955(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_887dc955(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xca803da0df03c7e0897ff09bc53369654be0e3e7).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0xca803da0df03c7e0897ff09bc53369654be0e3e7).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0xaae18cd46c45d343bba1eab46716b4d69d799734;
        (bool success, bytes memory ret0) = address(0xca803da0df03c7e0897ff09bc53369654be0e3e7).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0xaae18cd46c45d343bba1eab46716b4d69d799734).code.length);
        (bool success, bytes memory ret0) = address(0xaae18cd46c45d343bba1eab46716b4d69d799734).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0xe07ba856
    /// @custom:signature   Unresolved_e07ba856(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_e07ba856(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xc7145e1290b1d1221aba5ae48d4ace17c6be088f).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0xc7145e1290b1d1221aba5ae48d4ace17c6be088f).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0x6a8ee78653c588530d31fa308f4b165f346bd9e0;
        (bool success, bytes memory ret0) = address(0xc7145e1290b1d1221aba5ae48d4ace17c6be088f).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0x6a8ee78653c588530d31fa308f4b165f346bd9e0).code.length);
        (bool success, bytes memory ret0) = address(0x6a8ee78653c588530d31fa308f4b165f346bd9e0).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0xb1901548
    /// @custom:signature   Unresolved_b1901548(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_b1901548(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x1d177cb9efeea49a8b97ab1c72785a3a37abc9ff).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x1d177cb9efeea49a8b97ab1c72785a3a37abc9ff).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9;
        (bool success, bytes memory ret0) = address(0x1d177cb9efeea49a8b97ab1c72785a3a37abc9ff).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9).code.length);
        (bool success, bytes memory ret0) = address(0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
    
    /// @custom:selector    0xf5d803e5
    /// @custom:signature   Unresolved_f5d803e5(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_f5d803e5(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x6a8ee78653c588530d31fa308f4b165f346bd9e0).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        var_c = address(this);
        (bool success, bytes memory ret0) = address(0x6a8ee78653c588530d31fa308f4b165f346bd9e0).Unresolved_dd62ed3e(var_c); // staticcall
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_f == (var_f));
        require(!(var_f) < arg1);
        var_d = 0x1c27fd7ab4faa8141119484e00d2455851639c2b;
        (bool success, bytes memory ret0) = address(0x6a8ee78653c588530d31fa308f4b165f346bd9e0).Unresolved_095ea7b3(var_d); // call
        var_d = arg1;
        require(address(0x1c27fd7ab4faa8141119484e00d2455851639c2b).code.length);
        (bool success, bytes memory ret0) = address(0x1c27fd7ab4faa8141119484e00d2455851639c2b).Unresolved_a0712d68(var_d); // call
        var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_23b872dd(var_d); // call
    }
}
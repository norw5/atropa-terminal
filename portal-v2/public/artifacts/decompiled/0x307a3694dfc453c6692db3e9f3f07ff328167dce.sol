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
    bool public contractEnabled;
    
    event ContractDisabled(address);
    error InvalidToken(address);
    event ContractEnabled(address);
    event OwnershipTransferred(address, address);
    
    /// @custom:selector    0x0a641a81
    /// @custom:signature   Unresolved_0a641a81(address arg0, uint256 arg1) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_0a641a81(address arg0, uint256 arg1) public pure {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
    }
    
    /// @custom:selector    0x3aecd0e3
    /// @custom:signature   getTokenBalance(address arg0) public returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function getTokenBalance(address arg0) public returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_b = address(this);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_70a08231(var_b); // staticcall
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
        return var_d;
    }
    
    /// @custom:selector    0x367edd32
    /// @custom:signature   enableContract() public
    function enableContract() public {
        require(address(msg.sender) == (address(contractEnabled / 0x01)), CustomError_30cd7471());
        contractEnabled = (0x01 * 0x010000000000000000000000000000000000000000) | (uint248(contractEnabled));
        emit ContractEnabled(address(contractEnabled / 0x01));
    }
    
    /// @custom:selector    0x100688a5
    /// @custom:signature   Unresolved_100688a5(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_100688a5(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0xcc63b3ce
    /// @custom:signature   Unresolved_cc63b3ce(uint256 arg0, uint256 arg1) public view
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_cc63b3ce(uint256 arg0, uint256 arg1) public view {
        require(arg0 == arg0);
        require(!arg1 > 0xffffffffffffffff);
        require(!(arg1) > 0xffffffffffffffff);
        require(bytes1(contractEnabled / 0x010000000000000000000000000000000000000000), CustomError_7abbf1c9());
        require(arg0 > 0);
        require(!(arg1) < 0x02);
        require(0 < (arg1));
        require(!(((0 + ((0x04 + arg1) + 0x20)) + 0x20) - (0 + ((0x04 + arg1) + 0x20))) < 0x20);
        require(((0 + (arg1 + 0x20)) + 0) == (address((0 + (arg1 + 0x20)) + 0)));
        require(!(arg1 - 0x01) > (arg1));
        require((arg1 - 0x01) < (arg1));
        require(!(((0x20 * (arg1 - 0x01)) + ((0x04 + arg1) + 0x20) + 0x20) - ((0x20 * (arg1 - 0x01)) + ((0x04 + arg1) + 0x20))) < 0x20);
        require(((0x20 * (arg1 - 0x01)) + (arg1 + 0x20) + 0) == (address((0x20 * (arg1 - 0x01)) + (arg1 + 0x20) + 0)));
        require(address((0 + (arg1 + 0x20)) + 0) - (address((0x20 * (arg1 - 0x01)) + (arg1 + 0x20) + 0)), "Source and target cannot be the same");
    }
    
    /// @custom:selector    0x1c81accd
    /// @custom:signature   Unresolved_1c81accd(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_1c81accd(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x551512de
    /// @custom:signature   Unresolved_551512de(address arg0, uint256 arg1) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_551512de(address arg0, uint256 arg1) public pure {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
    }
    
    /// @custom:selector    0x1b240a9c
    /// @custom:signature   Unresolved_1b240a9c(address arg0, uint256 arg1) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_1b240a9c(address arg0, uint256 arg1) public pure {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
    }
    
    /// @custom:selector    0x1e365166
    /// @custom:signature   Unresolved_1e365166(uint256 arg0, uint256 arg1) public returns (bytes memory)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_1e365166(uint256 arg0, uint256 arg1) public returns (bytes memory) {
        require(arg0 == arg0);
        require(!arg1 > 0xffffffffffffffff);
        require(!(arg1) > 0xffffffffffffffff);
        require(arg1 > 0, CustomError_961c9a4f());
        uint256 var_a = var_a + (0x20 + (0x20 * (arg1)));
        require(var_a.length > 0, CustomError_961c9a4f());
        require(!(var_a.length > 0xffffffffffffffff), CustomError_961c9a4f());
        var_a = var_a + (0x20 + (0x20 * var_a.length));
        require(!var_a.length, CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_a.length - 0x01, CustomError_961c9a4f());
        require(!((!0x01 < 0) & ((var_a.length - 0x01) > var_a.length) | ((0x01 < 0) & ((var_a.length - 0x01) < var_a.length))), CustomError_961c9a4f());
        require((var_a.length - 0x01) < 0, CustomError_961c9a4f());
        require((var_a.length - 0x01) < var_a.length, CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_l).Parent(); // staticcall
        var_m = var_a;
        (bool success, bytes memory ret0) = address(var_a.length - 0x01).Unresolved_5677abcc(var_m); // staticcall
        require(!var_a | (0x02 == ((var_a * 0x02) / var_a)), "Invalid multiplier");
        var_a = 0x80 + var_a;
        require((var_a.length - 0x01) < var_q, "Invalid multiplier");
        require(arg0 - 0x8000000000000000000000000000000000000000000000000000000000000000, "Invalid multiplier");
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, "Invalid multiplier");
        require(!arg0 | (0x02 == ((arg0 * 0x02) / arg0)), "Invalid multiplier");
        var_a = 0x80 + var_a;
        var_o = arg0;
        require((var_a.length - 0x01) < var_a.length, "Invalid multiplier");
        require((var_a.length - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, "Invalid multiplier");
        require(var_t > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_r = arg0;
        (bool success, bytes memory ret0) = address(var_l).Multiplier(var_r); // staticcall
        require(!arg0 | (0x02 == ((arg0 * 0x02) / arg0)), "Invalid multiplier");
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, CustomError_961c9a4f());
        require((!var_a.length - 0x01) | (0x02 == (((var_a.length - 0x01) * 0x02) / (var_a.length - 0x01))), CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_l < var_q, CustomError_961c9a4f());
        require((var_a.length - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, CustomError_961c9a4f());
        require(((var_a.length - 0x01) - 0x01) < 0, CustomError_961c9a4f());
        require(((var_a.length - 0x01) - 0x01) < var_q, CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_z).Parent(); // staticcall
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_ac = (var_a.length - 0x01) * 0x02;
        (bool success, bytes memory ret0) = address(var_z).Unresolved_5677abcc(var_ac); // staticcall
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, CustomError_961c9a4f());
        require((!(var_a.length - 0x01) - 0x01) | (0x02 == ((((var_a.length - 0x01) - 0x01) * 0x02) / ((var_a.length - 0x01) - 0x01))), CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_z < (var_aj), CustomError_961c9a4f());
        require(((var_a.length - 0x01) - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, CustomError_961c9a4f());
        require((((var_a.length - 0x01) - 0x01) - 0x01) < 0, CustomError_961c9a4f());
        require((((var_a.length - 0x01) - 0x01) - 0x01) < var_a.length, CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_am).Parent(); // staticcall
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_ap = ((var_a.length - 0x01) - 0x01) * 0x02;
        (bool success, bytes memory ret0) = address(var_am).Unresolved_5677abcc(var_ap); // staticcall
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, CustomError_961c9a4f());
        require((!((var_a.length - 0x01) - 0x01) - 0x01) | (0x02 == (((((var_a.length - 0x01) - 0x01) - 0x01) * 0x02) / (((var_a.length - 0x01) - 0x01) - 0x01))), CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_am < (var_aw), CustomError_961c9a4f());
        require((((var_a.length - 0x01) - 0x01) - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, CustomError_961c9a4f());
        require(((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) < 0, CustomError_961c9a4f());
        require(((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) < var_q, CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_az).Parent(); // staticcall
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_bc = (((var_a.length - 0x01) - 0x01) - 0x01) * 0x02;
        (bool success, bytes memory ret0) = address(var_az).Unresolved_5677abcc(var_bc); // staticcall
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, CustomError_961c9a4f());
        require((!(((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) | (0x02 == ((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) * 0x02) / ((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01))), CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_az < (var_bj), CustomError_961c9a4f());
        require(((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, CustomError_961c9a4f());
        require((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < 0, CustomError_961c9a4f());
        require((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < (var_bl), CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_bn).Parent(); // staticcall
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_bq = ((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) * 0x02;
        (bool success, bytes memory ret0) = address(var_bn).Unresolved_5677abcc(var_bq); // staticcall
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, CustomError_961c9a4f());
        require((!((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) | (0x02 == (((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) * 0x02) / (((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01))), CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_bn < (var_bx), CustomError_961c9a4f());
        require((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, CustomError_961c9a4f());
        require(((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < 0, CustomError_961c9a4f());
        require(((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < (var_bz), CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_cb).Parent(); // staticcall
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_ce = (((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) * 0x02;
        (bool success, bytes memory ret0) = address(var_cb).Unresolved_5677abcc(var_ce); // staticcall
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, CustomError_961c9a4f());
        require((!(((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) | (0x02 == ((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) * 0x02) / ((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01))), CustomError_961c9a4f());
        var_a = 0x80 + var_a;
        require(var_cb < (var_cl), CustomError_961c9a4f());
        require(((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, CustomError_961c9a4f());
        require((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < 0, CustomError_961c9a4f());
        require((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < (var_cn), CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_cp).Parent(); // staticcall
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!(((var_a + ret0.length) - var_a) < 0x20), CustomError_961c9a4f());
        require(var_t == (address(var_t)), CustomError_961c9a4f());
        require(0x01, CustomError_961c9a4f());
        var_cs = ((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) * 0x02;
        (bool success, bytes memory ret0) = address(var_cp).Unresolved_5677abcc(var_cs); // staticcall
        require(0 > 0, "Invalid multiplier");
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_t == (var_t));
        require(0x01, "Invalid multiplier");
        require((!((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) | (0x02 == (((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) * 0x02) / (((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01))), "Invalid multiplier");
        var_a = 0x80 + var_a;
        require(var_cp < (var_cz), "Invalid multiplier");
        require((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, "Invalid multiplier");
        require(((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < 0, "Invalid multiplier");
        require(((((((((var_a.length - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) - 0x01) < (var_db), "Invalid multiplier");
        require(var_t > 0, "Invalid multiplier");
        return abi.encodePacked(var_dd, (var_a + 0x40) - var_a, var_a.length);
    }
    
    /// @custom:selector    0xadc53864
    /// @custom:signature   Unresolved_adc53864(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_adc53864(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x97e93bce
    /// @custom:signature   Unresolved_97e93bce(uint256 arg0, address arg1) public returns (bytes memory)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_97e93bce(uint256 arg0, address arg1) public returns (bytes memory) {
        require(!arg0 > 0xffffffffffffffff);
        require(!(arg0) > 0xffffffffffffffff);
        require(!((var_c + (uint248(((arg0 * 0x20) + 0x20) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248(((arg0 * 0x20) + 0x20) + 0x1f))) < var_c));
        uint256 var_c = var_c + (uint248(((arg0 * 0x20) + 0x20) + 0x1f));
        require(!((0x04 + arg0) + 0x20) < (((0x04 + arg0) + 0x20) + (arg0 * 0x20)));
        require((arg0 + 0x20) == (address(arg0 + 0x20)));
        require(arg1 == arg1);
        require(var_c.length > 0, CustomError_961c9a4f());
        require(!(var_c.length > 0xffffffffffffffff), CustomError_961c9a4f());
        var_c = var_c + (0x20 + (0x20 * var_c.length));
        require(!var_c.length, CustomError_961c9a4f());
        var_c = 0x80 + var_c;
        require(var_c.length - 0x01, CustomError_961c9a4f());
        require(!((!0x01 < 0) & ((var_c.length - 0x01) > var_c.length) | ((0x01 < 0) & ((var_c.length - 0x01) < var_c.length))), CustomError_961c9a4f());
        require((var_c.length - 0x01) < 0, CustomError_961c9a4f());
        require((var_c.length - 0x01) < var_c.length, CustomError_961c9a4f());
        (bool success, bytes memory ret0) = address(var_k).Parent(); // staticcall
        var_l = var_c;
        (bool success, bytes memory ret0) = address(var_c.length - 0x01).Unresolved_5677abcc(var_l); // staticcall
        require(!var_c | (0x02 == ((var_c * 0x02) / var_c)), "Invalid multiplier");
        var_c = 0x80 + var_c;
        require((var_c.length - 0x01) < var_p, "Invalid multiplier");
        require(arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000, "Invalid multiplier");
        require(0 > 0, "Invalid multiplier");
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_s == (var_s));
        require(0x01, "Invalid multiplier");
        require(!arg1 | (0x02 == ((arg1 * 0x02) / arg1)), "Invalid multiplier");
        var_c = 0x80 + var_c;
        var_n = arg1;
        require((var_c.length - 0x01) < var_c.length, "Invalid multiplier");
        require((var_c.length - 0x01) - 0x8000000000000000000000000000000000000000000000000000000000000000, "Invalid multiplier");
        require(var_s > 0, "Invalid multiplier");
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        return abi.encodePacked((var_c + 0x20) - var_c, var_c.length);
    }
    
    /// @custom:selector    0x715018a6
    /// @custom:signature   renounceOwnership() public
    function renounceOwnership() public {
        require(address(msg.sender) == (address(contractEnabled / 0x01)), CustomError_30cd7471());
        contractEnabled = 0 | (uint96(contractEnabled));
        emit OwnershipTransferred(address(contractEnabled / 0x01), 0);
    }
    
    /// @custom:selector    0x9532b6ab
    /// @custom:signature   validateToken(address arg0) public returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function validateToken(address arg0) public returns (bool) {
        require(arg0 == (address(arg0)));
        (bool success, bytes memory ret0) = address(arg0).Parent(); // staticcall
        return abi.encodePacked(0, 0);
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (address(var_d)));
        require(0x01);
        return abi.encodePacked(!(address(var_d) == 0), address(var_d));
    }
    
    /// @custom:selector    0x7822104b
    /// @custom:signature   Unresolved_7822104b(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_7822104b(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x894ba833
    /// @custom:signature   disableContract() public
    function disableContract() public {
        require(address(msg.sender) == (address(contractEnabled / 0x01)), CustomError_30cd7471());
        contractEnabled = (0 * 0x010000000000000000000000000000000000000000) | (uint248(contractEnabled));
        emit ContractDisabled(address(contractEnabled / 0x01));
    }
    
    /// @custom:selector    0x938c8028
    /// @custom:signature   getMultiplier(address arg0, uint256 arg1) public returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function getMultiplier(address arg0, uint256 arg1) public returns (uint256) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        uint256 var_b = arg1;
        (bool success, bytes memory ret0) = address(arg0).Unresolved_5677abcc(var_b); // staticcall
        return 0x02;
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
        require(0x01);
        return var_d;
    }
    
    /// @custom:selector    0x64463e66
    /// @custom:signature   Unresolved_64463e66(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_64463e66(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:signature   transferOwnership(address arg0) public
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function transferOwnership(address arg0) public {
        require(arg0 == (address(arg0)));
        require(address(msg.sender) == (address(contractEnabled / 0x01)), CustomError_30cd7471());
        require(address(arg0) - 0, "New owner must be different from current owner");
        require(address(arg0) - (address(contractEnabled / 0x01)), "New owner must be different from current owner");
        contractEnabled = (address(arg0) * 0x01) | (uint96(contractEnabled));
        emit OwnershipTransferred(address(contractEnabled / 0x01), address(arg0));
    }
    
    /// @custom:selector    0xc3a52df6
    /// @custom:signature   Unresolved_c3a52df6(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_c3a52df6(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x10cde4eb
    /// @custom:signature   Unresolved_10cde4eb(address arg0) public returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_10cde4eb(address arg0) public returns (uint256) {
        require(arg0 == (address(arg0)));
        (bool success, bytes memory ret0) = address(arg0).Parent(); // staticcall
        return 0;
        uint256 var_b = var_b + (uint248(ret0.length + 0x1f));
        require(!((var_b + ret0.length) - var_b) < 0x20);
        require(var_c == (address(var_c)));
        require(0x01);
        return address(var_c);
    }
}
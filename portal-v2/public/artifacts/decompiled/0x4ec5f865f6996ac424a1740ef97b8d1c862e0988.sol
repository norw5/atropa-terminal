// heimdall-rs decompile of Cult of the Dead Cow 0x4ec5F865f6996Ac424a1740ef97b8d1c862e0988 (runtime @ 2026-09-09) — session 17, queue 5c-ii
// Analysis: Mint() permissionless; constructor hardcoded 8 wallet slots (7 distinct) receiving all mints; MATH.Random()-driven amounts [chain-verified]
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
    uint256 public constant _mathlib = 1041911792213063654011521262641547635723975782493;
    uint256 public constant decimals = 18;
    
    mapping(bytes32 => bytes32) storage_map_g;
    mapping(bytes32 => bytes32) storage_map_a;
    bytes32 store_e;
    bytes32 store_c;
    uint256 public totalSupply;
    mapping(bytes32 => bytes32) storage_map_f;
    bytes32 store_d;
    
    event Approval(address, address, uint256);
    error ERC20InvalidReceiver(address);
    event Transfer(address, address, uint256);
    
    /// @custom:selector    0x42966c68
    /// @custom:signature   burn(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function burn(uint256 arg0) public payable {
        require(arg0 == arg0);
        require(address(msg.sender) - 0, CustomError_e450d38c());
        require(address(msg.sender) - 0, CustomError_e450d38c());
        address var_a = address(msg.sender);
        require(!(storage_map_a[var_a] < arg0), CustomError_e450d38c());
        var_a = address(msg.sender);
        storage_map_a[var_a] = storage_map_a[var_a] - arg0;
        require(0, CustomError_96c6fd1e());
        var_a = 0;
        storage_map_a[var_a] = storage_map_a[var_a] + arg0;
        emit Transfer(address(msg.sender), 0, arg0);
        totalSupply = totalSupply - arg0;
        emit Transfer(address(msg.sender), 0, arg0);
        require(!(totalSupply > (totalSupply + arg0)), CustomError_96c6fd1e());
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:signature   symbol() public view returns (string memory)
    function symbol() public view returns (string memory) {
        if (store_c) {
            if (store_c - ((store_c / 0x02) < 0x20)) {
                uint256 var_c = var_c + (0x20 + (((0x1f + (store_c / 0x02)) / 0x20) * 0x20));
                if (store_c) {
                    if (store_c - ((store_c / 0x02) < 0x20)) {
                        if (!store_c / 0x02) {
                            if (0x1f < (store_c / 0x02)) {
                                var_a = 0x04;
                                if ((0x20 + var_c) + (store_c / 0x02) > (0x20 + (0x20 + var_c))) {
                                    return abi.encodePacked((var_c + 0x20) - var_c, var_c.length);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:signature   transfer(address arg0, uint256 arg1) public payable returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function transfer(address arg0, uint256 arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(address(msg.sender) - 0, CustomError_e450d38c());
        require(address(arg0) - 0, CustomError_e450d38c());
        require(address(msg.sender) - 0, CustomError_e450d38c());
        address var_a = address(msg.sender);
        require(!(storage_map_a[var_a] < arg1), CustomError_e450d38c());
        var_a = address(msg.sender);
        storage_map_a[var_a] = storage_map_a[var_a] - arg1;
        require(address(arg0) - 0, CustomError_ec442f05());
        var_a = address(arg0);
        storage_map_a[var_a] = storage_map_a[var_a] + arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
        totalSupply = totalSupply - arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
        require(!(totalSupply > (totalSupply + arg1)), CustomError_ec442f05());
    }
    
    /// @custom:selector    0x06fdde03
    /// @custom:signature   name() public view returns (string memory)
    function name() public view returns (string memory) {
        if (store_d) {
            if (store_d - ((store_d / 0x02) < 0x20)) {
                uint256 var_c = var_c + (0x20 + (((0x1f + (store_d / 0x02)) / 0x20) * 0x20));
                if (store_d) {
                    if (store_d - ((store_d / 0x02) < 0x20)) {
                        if (!store_d / 0x02) {
                            if (0x1f < (store_d / 0x02)) {
                                var_a = 0x03;
                                if ((0x20 + var_c) + (store_d / 0x02) > (0x20 + (0x20 + var_c))) {
                                    return abi.encodePacked((var_c + 0x20) - var_c, var_c.length);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:signature   Unresolved_dd62ed3e(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_dd62ed3e(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x79cc6790
    /// @custom:signature   burnFrom(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function burnFrom(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        var_a = address(msg.sender);
        require(storage_map_a[var_a] == 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, CustomError_e450d38c());
        require(address(arg0) - 0, CustomError_e450d38c());
        require(address(arg0) - 0, CustomError_e450d38c());
        var_a = address(arg0);
        require(!(storage_map_a[var_a] < arg1), CustomError_e450d38c());
        var_a = address(arg0);
        storage_map_a[var_a] = storage_map_a[var_a] - arg1;
        require(0, CustomError_96c6fd1e());
        var_a = 0;
        storage_map_a[var_a] = storage_map_a[var_a] + arg1;
        emit Transfer(address(arg0), 0, arg1);
        totalSupply = totalSupply - arg1;
        emit Transfer(address(arg0), 0, arg1);
        require(!(totalSupply > (totalSupply + arg1)), CustomError_96c6fd1e());
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        require(!(storage_map_a[var_a] < arg1), CustomError_fb8f41b2());
        if (address(arg0) - 0) {
            require(address(arg0) - 0, CustomError_94280d62());
            var_a = address(msg.sender);
            storage_map_a[var_a] = storage_map_a[var_a] - arg1;
            require(address(msg.sender) - 0, CustomError_94280d62());
        }
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:signature   Unresolved_23b872dd(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_23b872dd(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x34c73884
    /// @custom:signature   Mint() public payable
    function Mint() public payable {
        (bool success, bytes memory ret0) = address(0xb680f0cc810317933f234f67eb6a9e923407f05d).Random(); // call
        uint256 var_b = var_b + (uint248(ret0.length + 0x1f));
        require(!((var_b + ret0.length) - var_b) < 0x20);
        require(var_c == (uint64(var_c)));
        require(uint64(var_c * 0x15b3) == (uint64(var_c) * 0x15b3));
        require(!0 < store_e);
        require(0x02);
        (bool success, bytes memory ret0) = address(0xb680f0cc810317933f234f67eb6a9e923407f05d).Random(); // call
        var_b = var_b + (uint248(ret0.length + 0x1f));
        require(!(((var_b + ret0.length) - var_b) < 0x20), CustomError_e450d38c());
        require(var_c == (uint64(var_c)), CustomError_e450d38c());
        require(uint64(var_c * 0x15b3) == (uint64(var_c) * 0x15b3), CustomError_e450d38c());
        require(uint64(var_c * 0x15b3), CustomError_e450d38c());
        require(0 < store_e, CustomError_e450d38c());
        address var_d = address(storage_map_f[var_d] / 0x01);
        require(!(uint64(var_c * 0x15b3) % (uint64(var_c * 0x15b3)) > (uint64(var_c * 0x15b3) % (uint64(var_c * 0x15b3)) + storage_map_g[var_d])), CustomError_e450d38c());
        var_d = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        require(!((uint64(var_c * 0x15b3) / 0x02) > (uint64(var_c * 0x15b3) % (uint64(var_c * 0x15b3)) + storage_map_g[var_d])), CustomError_e450d38c());
        require(0 < store_e, CustomError_e450d38c());
        var_d = 0x05;
        require(address(storage_map_f[var_d] / 0x01) - 0, CustomError_e450d38c());
        require(0, CustomError_e450d38c());
        var_d = 0;
        require(!(storage_map_g[var_d] < (uint64(var_c * 0x15b3) / 0x02)), CustomError_e450d38c());
        var_d = 0;
        storage_map_g[var_d] = storage_map_g[var_d] - (uint64(var_c * 0x15b3) / 0x02);
        require(address(storage_map_f[var_d] / 0x01) - 0, CustomError_ec442f05());
        var_d = address(storage_map_f[var_d] / 0x01);
        storage_map_g[var_d] = storage_map_g[var_d] + (uint64(var_c * 0x15b3) / 0x02);
        emit Transfer(0, address(storage_map_f[var_d] / 0x01), (uint64(var_c * 0x15b3)) / 0x02);
        require(0x01, CustomError_ec442f05());
        require(!(totalSupply > (totalSupply + (uint64(var_c * 0x15b3) / 0x02))), CustomError_ec442f05());
        require(0 < store_e);
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:signature   approve(address arg0, uint256 arg1) public payable returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function approve(address arg0, uint256 arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(address(msg.sender) - 0, CustomError_94280d62());
        require(address(arg0) - 0, CustomError_94280d62());
        var_a = address(arg0);
        storage_map_a[var_a] = arg1;
        require(!0x01, CustomError_94280d62());
        return 0x01;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:signature   balanceOf(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function balanceOf(address arg0) public view returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_a = address(arg0);
        return storage_map_a[var_a];
    }
}
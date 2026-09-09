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
    uint256 public constant decimals = 18;
    
    mapping(bytes32 => bytes32) storage_map_a;
    address public owner;
    bytes32 store_c;
    uint256 public totalSupply;
    bytes32 store_g;
    bytes32 store_f;
    bytes32 store_d;
    
    event Approval(address, address, uint256);
    error ERC20InvalidSender(address);
    event Transfer(address, address, uint256);
    event OwnershipTransferred(address, address);
    
    /// @custom:selector    0x518757ae
    /// @custom:signature   Unresolved_518757ae(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_518757ae(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
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
        if (store_c) {
            if (store_c - ((store_c / 0x02) < 0x20)) {
                uint256 var_c = var_c + (0x20 + (((0x1f + (store_c / 0x02)) / 0x20) * 0x20));
                if (store_c) {
                    if (store_c - ((store_c / 0x02) < 0x20)) {
                        if (!store_c / 0x02) {
                            if (0x1f < (store_c / 0x02)) {
                                var_a = 0x03;
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
    
    /// @custom:selector    0x5dcf49e4
    /// @custom:signature   Unresolved_5dcf49e4(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_5dcf49e4(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xca9cf41c
    /// @custom:signature   BuyWithPI(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function BuyWithPI(uint256 arg0) public payable {
        require(arg0 == arg0);
        require(0x0139);
        address var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(store_d / 0x01).Unresolved_23b872dd(var_d); // call
        uint256 var_g = var_g + (uint248(ret0.length + 0x1f));
        require(!(((var_g + ret0.length) - var_g) < 0x20), "Need Approved pINDEPENDENCE");
        require(var_h == (var_h), "Need Approved pINDEPENDENCE");
        require(var_h, "Need Approved pINDEPENDENCE");
        var_e = address(msg.sender);
        (bool success, bytes memory ret0) = address(this).Unresolved_a9059cbb(var_e); // call
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
    
    /// @custom:selector    0xb61a722b
    /// @custom:signature   BuyWithG5(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function BuyWithG5(uint256 arg0) public payable {
        require(arg0 == arg0);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(store_f / 0x01).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!(((var_e + ret0.length) - var_e) < 0x20), "Need Approved Gimme5");
        require(var_f == (var_f), "Need Approved Gimme5");
        require(var_f, "Need Approved Gimme5");
        var_c = address(msg.sender);
        (bool success, bytes memory ret0) = address(this).Unresolved_a9059cbb(var_c); // call
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:signature   balanceOf(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function balanceOf(address arg0) public view returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_a = address(arg0);
        return storage_map_a[var_a];
    }
    
    /// @custom:selector    0xfd462eed
    /// @custom:signature   Unresolved_fd462eed(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_fd462eed(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x4e145bf2
    /// @custom:signature   Unresolved_4e145bf2(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_4e145bf2(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xf8784afe
    /// @custom:signature   Unresolved_f8784afe(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_f8784afe(uint256 arg0) public payable {
        require(arg0 == arg0);
        require(!arg0 | (0x02 == ((arg0 * 0x02) / arg0)));
        address var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(0x232a27ab6941281b3f474fe5ff7cc89816fb675a).Unresolved_23b872dd(var_d); // call
        uint256 var_g = var_g + (uint248(ret0.length + 0x1f));
        require(!(((var_g + ret0.length) - var_g) < 0x20), "Need Approved Fa");
        require(var_h == (var_h), "Need Approved Fa");
        require(var_h, "Need Approved Fa");
        var_e = address(msg.sender);
        (bool success, bytes memory ret0) = address(this).Unresolved_a9059cbb(var_e); // call
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:signature   symbol() public view returns (string memory)
    function symbol() public view returns (string memory) {
        if (store_g) {
            if (store_g - ((store_g / 0x02) < 0x20)) {
                uint256 var_c = var_c + (0x20 + (((0x1f + (store_g / 0x02)) / 0x20) * 0x20));
                if (store_g) {
                    if (store_g - ((store_g / 0x02) < 0x20)) {
                        if (!store_g / 0x02) {
                            if (0x1f < (store_g / 0x02)) {
                                var_a = 0x04;
                                if ((0x20 + var_c) + (store_g / 0x02) > (0x20 + (0x20 + var_c))) {
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
    
    /// @custom:selector    0xe2d50602
    /// @custom:signature   Unresolved_e2d50602(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_e2d50602(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x715018a6
    /// @custom:signature   renounceOwnership() public payable
    function renounceOwnership() public payable {
        require(address(owner / 0x01) == (address(msg.sender)), CustomError_118cdaa7());
        owner = 0 | (uint96(owner));
        emit OwnershipTransferred(address(owner / 0x01), 0);
    }
    
    /// @custom:selector    0xfd97aee0
    /// @custom:signature   Unresolved_fd97aee0(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_fd97aee0(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x60c97b69
    /// @custom:signature   Unresolved_60c97b69(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_60c97b69(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
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
    
    /// @custom:selector    0x512ab7de
    /// @custom:signature   BuyWithMATH(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function BuyWithMATH(uint256 arg0) public payable {
        require(arg0 == arg0);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(0xb680f0cc810317933f234f67eb6a9e923407f05d).Unresolved_23b872dd(var_b); // call
        uint256 var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!(((var_e + ret0.length) - var_e) < 0x20), "Need Approved MATH");
        require(var_f == (var_f), "Need Approved MATH");
        require(var_f, "Need Approved MATH");
        var_c = address(msg.sender);
        (bool success, bytes memory ret0) = address(this).Unresolved_a9059cbb(var_c); // call
    }
    
    /// @custom:selector    0x26f33719
    /// @custom:signature   Unresolved_26f33719(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_26f33719(uint64 arg0) public pure {
        require(!((var_a + 0x01c0) > 0xffffffffffffffff) | ((var_a + 0x01c0) < var_a));
        uint256 var_a = var_a + 0x01c0;
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:signature   transferOwnership(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function transferOwnership(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(owner / 0x01) == (address(msg.sender)), CustomError_118cdaa7());
        require(address(arg0) - 0, CustomError_1e4fbdf7());
        owner = (address(arg0) * 0x01) | (uint96(owner));
        emit OwnershipTransferred(address(owner / 0x01), address(arg0));
    }
    
    /// @custom:selector    0x97136919
    /// @custom:signature   Unresolved_97136919(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_97136919(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xc23b545f
    /// @custom:signature   Unresolved_c23b545f(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_c23b545f(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
}
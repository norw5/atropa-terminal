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
    uint256 public constant MotzkinPrime = 953467954114363;
    uint256 public constant decimals = 18;
    
    bytes32 store_a;
    bytes32 store_c;
    mapping(bytes32 => bytes32) storage_map_b;
    uint256 public totalSupply;
    mapping(bytes32 => bytes32) storage_map_i;
    bytes32 store_g;
    address public owner;
    bytes32 store_h;
    bytes32 store_d;
    
    event Approval(address, address, uint256);
    error ERC20InvalidSender(address);
    event Transfer(address, address, uint256);
    event OwnershipTransferred(address, address);
    
    /// @custom:selector    0x06fdde03
    /// @custom:signature   name() public view returns (string memory)
    function name() public view returns (string memory) {
        if (store_a) {
            if (store_a - ((store_a / 0x02) < 0x20)) {
                uint256 var_c = var_c + (0x20 + (((0x1f + (store_a / 0x02)) / 0x20) * 0x20));
                if (store_a) {
                    if (store_a - ((store_a / 0x02) < 0x20)) {
                        if (!store_a / 0x02) {
                            if (0x1f < (store_a / 0x02)) {
                                var_a = 0x03;
                                if ((0x20 + var_c) + (store_a / 0x02) > (0x20 + (0x20 + var_c))) {
                                    return abi.encodePacked((var_c + 0x20) - var_c, var_c.length);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x1cc2b74e
    /// @custom:signature   Unresolved_1cc2b74e(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_1cc2b74e(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xca9cf41c
    /// @custom:signature   BuyWithPI(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function BuyWithPI(uint256 arg0) public payable {
        require(arg0 == arg0);
        require(0x61);
        address var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(store_c / 0x01).Unresolved_23b872dd(var_d); // call
        uint256 var_g = var_g + (uint248(ret0.length + 0x1f));
        require(!(((var_g + ret0.length) - var_g) < 0x20), "Need Approved pINDEPENDENCE");
        require(var_h == (var_h), "Need Approved pINDEPENDENCE");
        require(var_h, "Need Approved pINDEPENDENCE");
        var_e = address(msg.sender);
        (bool success, bytes memory ret0) = address(this).Unresolved_a9059cbb(var_e); // call
    }
    
    /// @custom:selector    0xbb276933
    /// @custom:signature   Unresolved_bb276933(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_bb276933(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
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
        require(0x07);
        address var_d = address(msg.sender);
        (bool success, bytes memory ret0) = address(store_d / 0x01).Unresolved_23b872dd(var_d); // call
        uint256 var_g = var_g + (uint248(ret0.length + 0x1f));
        require(!(((var_g + ret0.length) - var_g) < 0x20), "Need Approved Gimme5");
        require(var_h == (var_h), "Need Approved Gimme5");
        require(var_h, "Need Approved Gimme5");
        var_e = address(msg.sender);
        (bool success, bytes memory ret0) = address(this).Unresolved_a9059cbb(var_e); // call
    }
    
    /// @custom:selector    0x2f94f072
    /// @custom:signature   Unresolved_2f94f072(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_2f94f072(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xf00692c2
    /// @custom:signature   Unresolved_f00692c2(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_f00692c2(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x8242719f
    /// @custom:signature   Unresolved_8242719f(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_8242719f(uint64 arg0) public pure {
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
        storage_map_b[var_a] = arg1;
        require(!0x01, CustomError_94280d62());
        return 0x01;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0xe2a92eef
    /// @custom:signature   Unresolved_e2a92eef(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_e2a92eef(uint64 arg0) public pure {
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
    
    /// @custom:selector    0xdcc48935
    /// @custom:signature   Unresolved_dcc48935(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_dcc48935(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
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
        require(!(storage_map_b[var_a] < arg1), CustomError_e450d38c());
        var_a = address(msg.sender);
        storage_map_b[var_a] = storage_map_b[var_a] - arg1;
        require(address(arg0) - 0, CustomError_ec442f05());
        var_a = address(arg0);
        storage_map_b[var_a] = storage_map_b[var_a] + arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
        totalSupply = totalSupply - arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
        require(!(totalSupply > (totalSupply + arg1)), CustomError_ec442f05());
    }
    
    /// @custom:selector    0x42966c68
    /// @custom:signature   burn(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function burn(uint256 arg0) public payable {
        require(arg0 == arg0);
        require(address(msg.sender) - 0, CustomError_e450d38c());
        require(address(msg.sender) - 0, CustomError_e450d38c());
        address var_a = address(msg.sender);
        require(!(storage_map_b[var_a] < arg0), CustomError_e450d38c());
        var_a = address(msg.sender);
        storage_map_b[var_a] = storage_map_b[var_a] - arg0;
        require(0, CustomError_96c6fd1e());
        var_a = 0;
        storage_map_b[var_a] = storage_map_b[var_a] + arg0;
        emit Transfer(address(msg.sender), 0, arg0);
        totalSupply = totalSupply - arg0;
        emit Transfer(address(msg.sender), 0, arg0);
        require(!(totalSupply > (totalSupply + arg0)), CustomError_96c6fd1e());
    }
    
    /// @custom:selector    0x79cc6790
    /// @custom:signature   burnFrom(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function burnFrom(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        var_a = address(msg.sender);
        require(storage_map_b[var_a] == 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, CustomError_e450d38c());
        require(address(arg0) - 0, CustomError_e450d38c());
        require(address(arg0) - 0, CustomError_e450d38c());
        var_a = address(arg0);
        require(!(storage_map_b[var_a] < arg1), CustomError_e450d38c());
        var_a = address(arg0);
        storage_map_b[var_a] = storage_map_b[var_a] - arg1;
        require(0, CustomError_96c6fd1e());
        var_a = 0;
        storage_map_b[var_a] = storage_map_b[var_a] + arg1;
        emit Transfer(address(arg0), 0, arg1);
        totalSupply = totalSupply - arg1;
        emit Transfer(address(arg0), 0, arg1);
        require(!(totalSupply > (totalSupply + arg1)), CustomError_96c6fd1e());
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        require(!(storage_map_b[var_a] < arg1), CustomError_fb8f41b2());
        if (address(arg0) - 0) {
            require(address(arg0) - 0, CustomError_94280d62());
            var_a = address(msg.sender);
            storage_map_b[var_a] = storage_map_b[var_a] - arg1;
            require(address(msg.sender) - 0, CustomError_94280d62());
        }
    }
    
    /// @custom:selector    0xbc6ce69b
    /// @custom:signature   Unresolved_bc6ce69b(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_bc6ce69b(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x63461f5a
    /// @custom:signature   Unresolved_63461f5a(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_63461f5a(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:signature   balanceOf(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function balanceOf(address arg0) public view returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_a = address(arg0);
        return storage_map_b[var_a];
    }
    
    /// @custom:selector    0xe11deae5
    /// @custom:signature   Unresolved_e11deae5(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_e11deae5(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xe4052538
    /// @custom:signature   Unresolved_e4052538(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_e4052538(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xcf45a67f
    /// @custom:signature   Unresolved_cf45a67f(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_cf45a67f(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
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
    
    /// @custom:selector    0xfdc0a087
    /// @custom:signature   Unresolved_fdc0a087(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_fdc0a087(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x5f7edb9a
    /// @custom:signature   New() public payable
    function New() public payable {
        require(0x12);
        require(!0x423a35c7 | (0x01 == 0x01));
        require(totalSupply > 0x423a35c7);
        (bool success, bytes memory ret0) = address(store_h / 0x01).adfepixw(); // call
        var_a = var_a + (uint248(ret0.length + 0x1f));
        require(!((var_a + ret0.length) - var_a) < 0x20);
        require(var_bz == (uint64(var_bz)));
        (bool success, bytes memory ret0) = address(store_h / 0x01).adfepixw(); // call
        if (0x12) {
            require(0x12, CustomError_e450d38c());
            require(!0x01 | (0x01 == 0x01), CustomError_e450d38c());
            require(0, CustomError_e450d38c());
            uint256 var_t = 0;
            require(!(storage_map_i[var_t] < 0x01), CustomError_e450d38c());
            var_t = 0;
            storage_map_i[var_t] = storage_map_i[var_t] - 0x01;
            require(address(this) - 0, CustomError_e450d38c());
        }
        require(!(totalSupply > (totalSupply + 0x01)), CustomError_ec442f05());
        if (0x0a) {
            if (0x0a == 0x01) {
                if (0x0a == 0x02) {
                    if (!0x12 > 0xff) {
                        if (!0x040000 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                            if (!((0x0a < 0x0b) & (0x12 < 0x4e)) | ((0x0a < 0x0133) & (0x12 < 0x20))) {
                                if (!0x12 > 0x01) {
                                    if (!0x01 > 0x1999999999999999999999999999999999999999999999999999999999999999) {
                                        if (!0x0a > 0x1999999999999999999999999999999999999999999999999999999999999999) {
                                            if (!0) {
                                            }
                                            if (!0x0de0b6b3a7640000 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xff61d989
    /// @custom:signature   Unresolved_ff61d989(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_ff61d989(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xd539394f
    /// @custom:signature   Unresolved_d539394f(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_d539394f(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:signature   Unresolved_dd62ed3e(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_dd62ed3e(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x715018a6
    /// @custom:signature   renounceOwnership() public payable
    function renounceOwnership() public payable {
        require(address(owner / 0x01) == (address(msg.sender)), CustomError_118cdaa7());
        owner = 0 | (uint96(owner));
        emit OwnershipTransferred(address(owner / 0x01), 0);
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
    
    /// @custom:selector    0x79efd674
    /// @custom:signature   Unresolved_79efd674(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_79efd674(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x7c06b109
    /// @custom:signature   Unresolved_7c06b109(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_7c06b109(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x81b2a8e7
    /// @custom:signature   Unresolved_81b2a8e7(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_81b2a8e7(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x37396386
    /// @custom:signature   Unresolved_37396386(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_37396386(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
    
    /// @custom:selector    0x0d796e03
    /// @custom:signature   Unresolved_0d796e03(uint64 arg0) public pure
    /// @param              arg0 ["uint64", "bytes8", "int64"]
    function Unresolved_0d796e03(uint64 arg0) public pure {
        require(!((var_a + 0x0240) > 0xffffffffffffffff) | ((var_a + 0x0240) < var_a));
        require(arg0 == (uint64(arg0)));
    }
}
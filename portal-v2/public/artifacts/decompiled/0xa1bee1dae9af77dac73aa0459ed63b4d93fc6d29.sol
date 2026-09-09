// heimdall-rs decompile of MV WM 0xA1BEe1daE9Af77dAC73aA0459eD63b4D93fC6d29 (runtime @ 2026-09-09) — session 17, queue 5c-i
// Analysis: Rho() mints per call -> dead 4e18, Maria2 1e18, 0x046eB71E.. 8^18 wei, 0x9abF7504.. 7^18 wei, 0x7ae04eD7.. 5^18 wei, msg.sender 1e18 [chain-verified]
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
    
    bytes32 store_a;
    uint256 public totalSupply;
    mapping(bytes32 => bytes32) storage_map_b;
    bytes32 store_e;
    address public owner;
    
    event Transfer(address, address, uint256);
    event Approval(address, address, uint256);
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
    
    /// @custom:selector    0x42966c68
    /// @custom:signature   burn(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function burn(uint256 arg0) public payable {
        require(arg0 == arg0);
        require(address(msg.sender) - 0, "ERC20: burn amount exceeds balance");
        address var_a = address(msg.sender);
        require(!(storage_map_b[var_a] < arg0), "ERC20: burn amount exceeds balance");
        var_a = address(msg.sender);
        storage_map_b[var_a] = storage_map_b[var_a] - arg0;
        require(!((totalSupply - arg0) > totalSupply), "ERC20: burn from the zero address");
        totalSupply = totalSupply - arg0;
        emit Transfer(address(msg.sender), 0, arg0);
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:signature   transfer(address arg0, uint256 arg1) public payable returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function transfer(address arg0, uint256 arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(address(msg.sender) - 0, "ERC20: transfer amount exceeds balance");
        require(address(arg0) - 0, "ERC20: transfer amount exceeds balance");
        address var_a = address(msg.sender);
        require(!(storage_map_b[var_a] < arg1), "ERC20: transfer amount exceeds balance");
        var_a = address(msg.sender);
        storage_map_b[var_a] = storage_map_b[var_a] - arg1;
        var_a = address(arg0);
        require(!(storage_map_b[var_a] > (storage_map_b[var_a] + arg1)), "ERC20: transfer to the zero address");
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        storage_map_b[var_a] = storage_map_b[var_a] + arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x39509351
    /// @custom:signature   increaseAllowance(address arg0, uint256 arg1) public payable returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function increaseAllowance(address arg0, uint256 arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        var_a = address(arg0);
        require(!(storage_map_b[var_a] > (storage_map_b[var_a] + arg1)), "ERC20: approve to the zero address");
        require(address(msg.sender) - 0, "ERC20: approve to the zero address");
        require(address(arg0) - 0, "ERC20: approve to the zero address");
        var_a = address(arg0);
        storage_map_b[var_a] = storage_map_b[var_a] + arg1;
        emit Approval(address(msg.sender), address(arg0), storage_map_b[var_a] + arg1);
        return 0x01;
    }
    
    /// @custom:selector    0xa4566950
    /// @custom:signature   Rho() public view
    function Rho() public view {
        require(0x12, "ERC20: mint to the zero address");
        require(!0x04 | (0x01 == 0x01), "ERC20: mint to the zero address");
        require(0xdead, "ERC20: mint to the zero address");
        if (!totalSupply > (totalSupply + 0x04)) {
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
    }
    
    /// @custom:selector    0xa457c2d7
    /// @custom:signature   decreaseAllowance(address arg0, uint256 arg1) public payable returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function decreaseAllowance(address arg0, uint256 arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        var_a = address(arg0);
        require(!(storage_map_b[var_a] < arg1), "ERC20: decreased allowance below zero");
        require(address(msg.sender) - 0, "ERC20: approve to the zero address");
        require(address(arg0) - 0, "ERC20: approve to the zero address");
        var_a = address(arg0);
        storage_map_b[var_a] = storage_map_b[var_a] - arg1;
        emit Approval(address(msg.sender), address(arg0), storage_map_b[var_a] - arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x79cc6790
    /// @custom:signature   burnFrom(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function burnFrom(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        var_a = address(msg.sender);
        require(storage_map_b[var_a] == 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, "ERC20: burn amount exceeds balance");
        require(address(arg0) - 0, "ERC20: burn amount exceeds balance");
        var_a = address(arg0);
        require(!(storage_map_b[var_a] < arg1), "ERC20: burn amount exceeds balance");
        var_a = address(arg0);
        storage_map_b[var_a] = storage_map_b[var_a] - arg1;
        require(!((totalSupply - arg1) > totalSupply), "ERC20: burn from the zero address");
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        totalSupply = totalSupply - arg1;
        emit Transfer(address(arg0), 0, arg1);
        require(!(storage_map_b[var_a] < arg1), "ERC20: insufficient allowance");
        require(address(arg0) - 0, "ERC20: approve to the zero address");
        require(address(msg.sender) - 0, "ERC20: approve to the zero address");
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:signature   Unresolved_23b872dd(address arg0) public pure
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_23b872dd(address arg0) public pure {
        require(arg0 == (address(arg0)));
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:signature   balanceOf(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function balanceOf(address arg0) public view returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_a = address(arg0);
        return storage_map_b[var_a];
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:signature   symbol() public view returns (string memory)
    function symbol() public view returns (string memory) {
        if (store_e) {
            if (store_e - ((store_e / 0x02) < 0x20)) {
                uint256 var_c = var_c + (0x20 + (((0x1f + (store_e / 0x02)) / 0x20) * 0x20));
                if (store_e) {
                    if (store_e - ((store_e / 0x02) < 0x20)) {
                        if (!store_e / 0x02) {
                            if (0x1f < (store_e / 0x02)) {
                                var_a = 0x04;
                                if ((0x20 + var_c) + (store_e / 0x02) > (0x20 + (0x20 + var_c))) {
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
    
    /// @custom:selector    0x715018a6
    /// @custom:signature   renounceOwnership() public payable
    function renounceOwnership() public payable {
        require(address(owner / 0x01) == (address(msg.sender)), "Ownable: caller is not the owner");
        owner = 0 | (uint96(owner));
        emit OwnershipTransferred(address(owner / 0x01), 0);
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:signature   approve(address arg0, uint256 arg1) public payable returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function approve(address arg0, uint256 arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(address(msg.sender) - 0, "ERC20: approve to the zero address");
        require(address(arg0) - 0, "ERC20: approve to the zero address");
        var_a = address(arg0);
        storage_map_b[var_a] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:signature   transferOwnership(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function transferOwnership(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(owner / 0x01) == (address(msg.sender)), "Ownable: caller is not the owner");
        require(address(arg0) - 0, "Ownable: new owner is the zero address");
        owner = (address(arg0) * 0x01) | (uint96(owner));
        emit OwnershipTransferred(address(owner / 0x01), address(arg0));
    }
}
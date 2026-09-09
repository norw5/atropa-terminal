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
    uint256 public constant VOTING_THRESHOLD = 25000000000000000000;
    
    mapping(bytes32 => bytes32) storage_map_u;
    mapping(bytes32 => bytes32) storage_map_ah;
    mapping(bytes32 => bytes32) storage_map_p;
    mapping(bytes32 => bytes32) storage_map_am;
    mapping(bytes32 => bytes32) storage_map_aj;
    mapping(bytes32 => bytes32) storage_map_z;
    mapping(bytes32 => bytes32) storage_map_s;
    mapping(bytes32 => bytes32) storage_map_w;
    mapping(bytes32 => bytes32) storage_map_ao;
    mapping(bytes32 => bytes32) storage_map_ac;
    mapping(bytes32 => bytes32) storage_map_as;
    mapping(bytes32 => bytes32) storage_map_ap;
    uint256 public proposalCounter;
    mapping(bytes32 => bytes32) storage_map_ak;
    mapping(bytes32 => bytes32) storage_map_t;
    mapping(bytes32 => bytes32) storage_map_q;
    mapping(bytes32 => bytes32) storage_map_y;
    mapping(bytes32 => bytes32) storage_map_ae;
    mapping(bytes32 => bytes32) storage_map_v;
    mapping(bytes32 => bytes32) storage_map_k;
    uint256 public topHoldersCount;
    mapping(bytes32 => bytes32) storage_map_l;
    mapping(bytes32 => bytes32) storage_map_h;
    mapping(bytes32 => bytes32) storage_map_a;
    mapping(bytes32 => bytes32) storage_map_an;
    address public unresolved_25caf390;
    mapping(bytes32 => bytes32) storage_map_r;
    mapping(bytes32 => bytes32) storage_map_ab;
    mapping(bytes32 => bytes32) storage_map_af;
    bytes32 store_f;
    mapping(bytes32 => bytes32) storage_map_j;
    bytes32 store_m;
    mapping(bytes32 => bytes32) storage_map_aa;
    mapping(bytes32 => bytes32) storage_map_ag;
    mapping(bytes32 => bytes32) storage_map_g;
    mapping(bytes32 => bytes32) storage_map_n;
    address public owner;
    mapping(bytes32 => bytes32) storage_map_al;
    mapping(bytes32 => bytes32) storage_map_b;
    bytes32 store_i;
    mapping(bytes32 => bytes32) storage_map_ar;
    mapping(bytes32 => bytes32) storage_map_o;
    mapping(bytes32 => bytes32) storage_map_aq;
    mapping(bytes32 => bytes32) storage_map_ai;
    mapping(bytes32 => bytes32) storage_map_ad;
    
    
    /// @custom:selector    0xd559e2b1
    /// @custom:signature   isProposerWhitelisted(address arg0) public view returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function isProposerWhitelisted(address arg0) public view returns (bool) {
        require(arg0 == (address(arg0)));
        address var_a = address(arg0);
        return !(!bytes1(storage_map_a[var_a] / 0x01));
    }
    
    /// @custom:selector    0x0a90e031
    /// @custom:signature   Unresolved_0a90e031(address arg0) public view returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_0a90e031(address arg0) public view returns (bool) {
        require(arg0 == (address(arg0)));
        address var_a = address(arg0);
        return !(!bytes1(storage_map_a[var_a] / 0x01));
    }
    
    /// @custom:selector    0x785b1ffd
    /// @custom:signature   whitelistedProposers(address arg0) public view returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function whitelistedProposers(address arg0) public view returns (bool) {
        require(arg0 == (address(arg0)));
        address var_b = arg0;
        return !(!bytes1(storage_map_b[var_b] / 0x01));
    }
    
    /// @custom:selector    0x108f716b
    /// @custom:signature   Unresolved_108f716b(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_108f716b(uint256 arg0) public payable {
        require(arg0 == arg0);
        require((address(msg.sender)) == (address((((owner / 0x01))))), "Only owner can call this function");
        if (arg0 > 0) {
            topHoldersCount = arg0;
            if (!0 < store_f) {
                if (0 < store_f) {
                    require(arg0 > 0, "Count must be greater than zero");
                    var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    require(!(0 < store_f), "Count must be greater than zero");
                    storage_map_h[var_g] = (0x01 * 0x01) | (uint248(storage_map_h[var_g]));
                    storage_map_h[var_g] = (0 * 0x0100) | (uint248(storage_map_h[var_g]));
                    store_i = store_i + 0x01;
                    var_g = 0x09;
                    storage_map_j[var_g] = storage_map_g[var_g];
                    require(0 < store_f, "Count must be greater than zero");
                    require(0x02, "Count must be greater than zero");
                    var_g = 0x08;
                    require(!(storage_map_k[var_g] > (topHoldersCount / 0x02)), "Count must be greater than zero");
                    var_g = 0x08;
                    storage_map_g[var_g] = storage_map_l[var_g];
                    require(!((store_f - 0x01) > store_f), "Count must be greater than zero");
                    var_g = 0x08;
                    storage_map_l[var_g] = 0;
                    store_f = store_f - 0x01;
                    require((store_f - 0x01) < store_f, "Count must be greater than zero");
                    require(0 < store_f, "Count must be greater than zero");
                    require(store_f, "Count must be greater than zero");
                    var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    require(!(0 < store_f), "Count must be greater than zero");
                    require(0 < store_f, "Count must be greater than zero");
                    storage_map_h[var_g] = (0x01 * 0x010000) | (uint248(storage_map_h[var_g]));
                    storage_map_h[var_g] = (0 * 0x0100) | (uint248(storage_map_h[var_g]));
                    store_m = store_m + 0x01;
                    var_g = 0x0a;
                    storage_map_n[var_g] = storage_map_g[var_g];
                    require(0x02, "Count must be greater than zero");
                    require(storage_map_o[var_g] > (topHoldersCount / 0x02), "Count must be greater than zero");
                    require(!(storage_map_o[var_g] > (topHoldersCount / 0x02)), "Count must be greater than zero");
                    require(!(!bytes1(storage_map_p[var_g] / 0x01)), "Count must be greater than zero");
                    var_g = 0x08;
                    require(!(!bytes1(storage_map_p[var_g] / 0x01)), "Count must be greater than zero");
                    var_g = 0x08;
                    storage_map_g[var_g] = storage_map_l[var_g];
                    require(!((store_f - 0x01) > store_f), "Count must be greater than zero");
                    require((store_f - 0x01) < store_f, "Count must be greater than zero");
                }
                require(0 < store_f, "Count must be greater than zero");
                require(store_f, "Count must be greater than zero");
                var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                require(0x01, "Count must be greater than zero");
                require(!(storage_map_k[var_g] > (storage_map_k[var_g] + (storage_map_o[var_g]))), "Count must be greater than zero");
            }
        }
    }
    
    /// @custom:selector    0xabe9abfc
    /// @custom:signature   Unresolved_abe9abfc(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_abe9abfc(uint256 arg0) public payable {
        require(arg0 == arg0);
        require((address(msg.sender)) == (address((((owner / 0x01))))), "Only owner can call this function");
        uint256 var_g = arg0;
        if (storage_map_q[var_g] - 0) {
            var_g = arg0;
            require(storage_map_q[var_g] - 0, "Proposal is not active");
            storage_map_h[var_g] = (0 * 0x0100) | (uint248(storage_map_h[var_g]));
            require(bytes1(storage_map_h[var_g] / 0x0100), "Proposal is not active");
            require(!(!bytes1(storage_map_p[var_g] / 0x01)), "Proposal is not active");
            require(!(!bytes1(storage_map_p[var_g] / 0x01)), "Proposal is not active");
            require(!(0 < store_f), "Proposal is not active");
            var_g = 0x08;
            require(0 < store_f, "Proposal is not active");
            require(storage_map_g[var_g] - arg0, "Proposal is not active");
            require(0x01, "Proposal is not active");
            require(!((store_f - 0x01) > store_f), "Proposal is not active");
            require((store_f - 0x01) < store_f, "Proposal is not active");
            var_g = 0x08;
            storage_map_g[var_g] = storage_map_l[var_g];
            require(0 < store_f, "Proposal is not active");
            var_g = 0x08;
            storage_map_l[var_g] = 0;
            store_f = store_f - 0x01;
            require(store_f, "Proposal is not active");
        }
    }
    
    /// @custom:selector    0xc7f758a8
    /// @custom:signature   getProposal(uint256 arg0) public view
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function getProposal(uint256 arg0) public view {
        require(arg0 == arg0);
        uint256 var_a = arg0;
        if (storage_map_r[var_a] - 0) {
            var_a = arg0;
            require(storage_map_r[var_a] - 0, "Proposal does not exist");
            require(bytes1(storage_map_s[var_a]), "Proposal does not exist");
            var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            uint256 var_d = var_d + (0x20 + (((0x1f + (storage_map_s[var_a] / 0x02)) / 0x20) * 0x20));
            require(bytes1(storage_map_s[var_a]) - ((storage_map_s[var_a] / 0x02) < 0x20), "Proposal does not exist");
            require(bytes1(storage_map_s[var_a]), "Proposal does not exist");
            var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(bytes1(storage_map_s[var_a]) - ((storage_map_s[var_a] / 0x02) < 0x20), "Proposal does not exist");
            require(!(storage_map_s[var_a] / 0x02), "Proposal does not exist");
            var_a = 0x07 + keccak256(var_a);
            require(0x1f < (storage_map_s[var_a] / 0x02), "Proposal does not exist");
        }
    }
    
    /// @custom:selector    0xe78a2315
    /// @custom:signature   Unresolved_e78a2315(uint256 arg0) public view returns (uint256)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_e78a2315(uint256 arg0) public view returns (uint256) {
        require(arg0 == arg0);
        require(arg0 < store_m);
        var_a = 0x0a;
        return storage_map_t[var_a];
    }
    
    /// @custom:selector    0x6a63854a
    /// @custom:signature   Unresolved_6a63854a(address arg0, uint256 arg1) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_6a63854a(address arg0, uint256 arg1) public view returns (uint256) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_b = arg0;
        require(arg1 < storage_map_b[var_b]);
        var_b = keccak256(var_b);
        return storage_map_u[var_b];
    }
    
    /// @custom:selector    0x50c9457c
    /// @custom:signature   activeProposalIds(uint256 arg0) public view returns (uint256)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function activeProposalIds(uint256 arg0) public view returns (uint256) {
        require(arg0 == arg0);
        require(arg0 < store_f);
        var_a = 0x08;
        return storage_map_t[var_a];
    }
    
    /// @custom:selector    0x47ed73b4
    /// @custom:signature   Unresolved_47ed73b4(uint256 arg0, uint256 arg1) public pure
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_47ed73b4(uint256 arg0, uint256 arg1) public pure {
        require(!arg0 > 0xffffffffffffffff);
        require(!(arg0) > 0xffffffffffffffff);
        require(!((var_c + (uint248(((arg0 + 0x1f) + 0x20) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248(((arg0 + 0x1f) + 0x20) + 0x1f))) < var_c));
        require(!arg1 > 0xffffffffffffffff);
    }
    
    /// @custom:selector    0xb296204d
    /// @custom:signature   Unresolved_b296204d(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_b296204d(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require((address(msg.sender)) == (address((((owner / 0x01))))), "Only owner can call this function");
        address var_g = address(arg0);
        storage_map_v[var_g] = (arg1 * 0x01) | (uint248(storage_map_v[var_g]));
    }
    
    /// @custom:selector    0x4a07bf68
    /// @custom:signature   Unresolved_4a07bf68() public payable
    function Unresolved_4a07bf68() public payable {
        require((address(msg.sender)) == (address((((owner / 0x01))))), "Only owner can call this function");
        if (!0 < store_f) {
            if (0 < store_f) {
                if (0x02) {
                    var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    if (!(storage_map_k[var_g]) > (topHoldersCount / 0x02)) {
                        storage_map_h[var_g] = (0x01 * 0x01) | (uint248(storage_map_h[var_g]));
                        storage_map_h[var_g] = (0 * 0x0100) | (uint248(storage_map_h[var_g]));
                        store_i = store_i + 0x01;
                        var_g = 0x09;
                        storage_map_j[var_g] = storage_map_g[var_g];
                        if (!(store_f - 0x01) > store_f) {
                            if ((store_f - 0x01) < store_f) {
                                if (0 < store_f) {
                                    var_g = 0x08;
                                    storage_map_g[var_g] = storage_map_l[var_g];
                                    if (store_f) {
                                        var_g = 0x08;
                                        storage_map_l[var_g] = 0;
                                        store_f = store_f - 0x01;
                                        if (!0 < store_f) {
                                            if (0 < store_f) {
                                                if (0x02) {
                                                    var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                    if (storage_map_o[var_g] > (topHoldersCount / 0x02)) {
                                                        if (!(storage_map_o[var_g]) > (topHoldersCount / 0x02)) {
                                                            storage_map_h[var_g] = (0x01 * 0x010000) | (uint248(storage_map_h[var_g]));
                                                            storage_map_h[var_g] = (0 * 0x0100) | (uint248(storage_map_h[var_g]));
                                                            store_m = store_m + 0x01;
                                                            var_g = 0x0a;
                                                            storage_map_n[var_g] = storage_map_g[var_g];
                                                            if (storage_map_p[var_g] / 0x01) {
                                                                if (storage_map_p[var_g] / 0x01) {
                                                                    if (!(store_f - 0x01) > store_f) {
                                                                        if ((store_f - 0x01) < store_f) {
                                                                            if (0 < store_f) {
                                                                                var_g = 0x08;
                                                                                storage_map_g[var_g] = storage_map_l[var_g];
                                                                                if (store_f) {
                                                                                    var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                                                    if (address(storage_map_w[var_g] / 0x01) == 0) {
                                                                                    }
                                                                                    if (0x01) {
                                                                                        var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                                                        if (!(storage_map_k[var_g]) > (storage_map_k[var_g] + (storage_map_o[var_g]))) {
                                                                                            var_g = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                                                            if (!(storage_map_k[var_g] + (storage_map_o[var_g])) == topHoldersCount) {
                                                                                                if (!(storage_map_k[var_g] + (storage_map_o[var_g])) == topHoldersCount) {
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
    
    /// @custom:selector    0x3830a9c5
    /// @custom:signature   Unresolved_3830a9c5(uint256 arg0) public view returns (uint256)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_3830a9c5(uint256 arg0) public view returns (uint256) {
        require(arg0 == arg0);
        require(arg0 < store_i);
        var_a = 0x09;
        return storage_map_t[var_a];
    }
    
    /// @custom:selector    0x527c0838
    /// @custom:signature   Unresolved_527c0838(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_527c0838(address arg0, uint256 arg1) public payable {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(!arg1, "Token address already uploaded");
        address var_a = address(arg0);
        require(!(bytes1(storage_map_a[var_a] / 0x01)), "Token address already uploaded");
        if (proposalCounter - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
            proposalCounter = proposalCounter + 0x01;
            var_a = proposalCounter;
            storage_map_r[var_a] = proposalCounter;
            storage_map_y[var_a] = (address(arg0) * 0x01) | (uint96(storage_map_y[var_a]));
            storage_map_z[var_a] = (address(msg.sender) * 0x01) | (uint96(storage_map_z[var_a]));
            storage_map_aa[var_a] = (0x01 * 0x0100) | (uint248(storage_map_aa[var_a]));
            var_a = address(arg0);
            storage_map_a[var_a] = storage_map_a[var_a] + 0x01;
            var_a = keccak256(var_a);
            storage_map_ab[var_a] = proposalCounter;
            store_f = store_f + 0x01;
            var_a = 0x08;
            storage_map_ac[var_a] = proposalCounter;
            var_a = address(arg0);
            storage_map_a[var_a] = (0x01 * 0x01) | (uint248(storage_map_a[var_a]));
            var_a = address(arg0);
            require(proposalCounter - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            require(!0 < storage_map_a[var_a]);
            var_a = storage_map_ad[var_a];
            require(0 < storage_map_a[var_a]);
            require(!(address(storage_map_z[var_a] / 0x01)) == (address(msg.sender)));
            storage_map_aa[var_a] = (0 * 0x0100) | (uint248(storage_map_aa[var_a]));
            require(!(address(storage_map_z[var_a] / 0x01)) == (address(msg.sender)));
            require(!0 < store_f);
            var_a = keccak256(var_a);
            require(0 < storage_map_a[var_a]);
            var_a = 0x08;
            require(0 < store_f);
            require(storage_map_ad[var_a] - (storage_map_ad[var_a]));
            require(0x01);
            require(!(store_f - 0x01) > store_f);
            require((store_f - 0x01) < store_f);
            var_a = 0x08;
            storage_map_ad[var_a] = storage_map_ae[var_a];
            require(0 < store_f);
            var_a = 0x08;
            storage_map_ae[var_a] = 0;
            store_f = store_f - 0x01;
            var_a = address(arg0);
            storage_map_a[var_a] = (0 * 0x01) | (uint248(storage_map_a[var_a]));
            var_a = address(arg0);
            storage_map_a[var_a] = (0 * 0x01) | (uint248(storage_map_a[var_a]));
            require(store_f);
        }
    }
    
    /// @custom:selector    0x809b2350
    /// @custom:signature   getRejectedProposals() public view returns (bytes memory)
    function getRejectedProposals() public view returns (bytes memory) {
        uint256 var_a = var_a + (0x20 + (0x20 * store_m));
        if (!store_m) {
            var_c = 0x0a;
            if ((0x20 + var_a) + (0x20 * store_m) > (0x20 + (0x20 + var_a))) {
                return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
            }
        }
    }
    
    /// @custom:selector    0xc4595996
    /// @custom:signature   Unresolved_c4595996(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_c4595996(uint256 arg0) public payable {
        require(arg0 == arg0);
        uint256 var_a = arg0;
        require(storage_map_r[var_a] - 0, "Only proposer can deactivate");
        var_a = arg0;
        require(address(storage_map_z[var_a] / 0x01) == (address(msg.sender)), "Only proposer can deactivate");
        require(bytes1(storage_map_ag[var_a] / 0x01), "Proposal already inactive");
        require(bytes1(storage_map_aa[var_a] / 0x0100), "Proposal already inactive");
        storage_map_aa[var_a] = (0 * 0x0100) | (uint248(storage_map_aa[var_a]));
        require(!(0 < store_f), "Proposal already inactive");
        require(0 < store_f, "Proposal already inactive");
        var_a = 0x08;
        require(storage_map_ad[var_a] - arg0, "Proposal already inactive");
        require(0x01, "Proposal already inactive");
        require(!((store_f - 0x01) > store_f), "Proposal already inactive");
        require((store_f - 0x01) < store_f, "Proposal already inactive");
        require(0 < store_f, "Proposal already inactive");
        var_a = 0x08;
        storage_map_ad[var_a] = storage_map_ae[var_a];
        require(store_f, "Proposal already inactive");
        var_a = 0x08;
        storage_map_ae[var_a] = 0;
        store_f = store_f - 0x01;
    }
    
    /// @custom:selector    0x5584c4f9
    /// @custom:signature   getActiveProposals() public view returns (bytes memory)
    function getActiveProposals() public view returns (bytes memory) {
        uint256 var_a = var_a + (0x20 + (0x20 * store_f));
        if (!store_f) {
            var_c = 0x08;
            if ((0x20 + var_a) + (0x20 * store_f) > (0x20 + (0x20 + var_a))) {
                return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
            }
        }
    }
    
    /// @custom:selector    0x3ac0feac
    /// @custom:signature   getApprovedProposals() public view returns (bytes memory)
    function getApprovedProposals() public view returns (bytes memory) {
        uint256 var_a = var_a + (0x20 + (0x20 * store_i));
        if (!store_i) {
            var_c = 0x09;
            if ((0x20 + var_a) + (0x20 * store_i) > (0x20 + (0x20 + var_a))) {
                return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
            }
        }
    }
    
    /// @custom:selector    0x6e22daa9
    /// @custom:signature   Unresolved_6e22daa9(address arg0) public view returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_6e22daa9(address arg0) public view returns (bool) {
        require(arg0 == (address(arg0)));
        address var_b = arg0;
        return !(!bytes1(storage_map_b[var_b] / 0x01));
    }
    
    /// @custom:selector    0xc9d27afe
    /// @custom:signature   Unresolved_c9d27afe(uint256 arg0, uint256 arg1) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_c9d27afe(uint256 arg0, uint256 arg1) public payable {
        require(arg0 == arg0);
        require(arg1 == arg1);
        address var_b = address(msg.sender);
        (bool success, bytes memory ret0) = address(unresolved_25caf390 / 0x01).Unresolved_70a08231(var_b); // staticcall
        uint256 var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
        require(!(var_d < 0x015af1d78b58c40000), "Must hold at least 25 Crow tokens");
        uint256 var_j = arg0;
        require(bytes1(storage_map_ah[var_j] / 0x0100), "Already voted");
        var_j = address(msg.sender);
        require(!(bytes1(storage_map_ai[var_j] / 0x01)), "Already voted");
        var_j = address(msg.sender);
        storage_map_ai[var_j] = (0x01 * 0x01) | (uint248(storage_map_ai[var_j]));
        if (!arg1) {
            require(!arg1, "Proposal is not active");
            var_j = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            storage_map_aj[var_j] = (storage_map_aj[var_j]) + 0x01;
            require(!(storage_map_aj[var_j] > (storage_map_aj[var_j] + 0x01)), "Proposal is not active");
            var_j = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(0x02, "Proposal is not active");
            require(!(storage_map_aj[var_j] > (topHoldersCount / 0x02)), "Proposal is not active");
            var_j = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(0x02, "Proposal is not active");
            require(storage_map_ak[var_j] > (topHoldersCount / 0x02), "Proposal is not active");
            storage_map_ah[var_j] = (0x01 * 0x010000) | (uint248(storage_map_ah[var_j]));
            storage_map_ah[var_j] = (0 * 0x0100) | (uint248(storage_map_ah[var_j]));
            store_m = store_m + 0x01;
            var_j = 0x0a;
            storage_map_al[var_j] = arg0;
            require(!(storage_map_ak[var_j] > (topHoldersCount / 0x02)), "Proposal is not active");
            require(!(!bytes1(storage_map_am[var_j] / 0x01)), "Proposal is not active");
            require(!(!bytes1(storage_map_am[var_j] / 0x01)), "Proposal is not active");
            require(!(0 < store_f), "Proposal is not active");
            var_j = 0x08;
            require(0 < store_f, "Proposal is not active");
            require(storage_map_an[var_j] - arg0, "Proposal is not active");
            require(0x01, "Proposal is not active");
            require(!((store_f - 0x01) > store_f), "Proposal is not active");
            require((store_f - 0x01) < store_f, "Proposal is not active");
            var_j = 0x08;
            storage_map_an[var_j] = storage_map_ao[var_j];
            require(0 < store_f, "Proposal is not active");
            var_j = 0x08;
            storage_map_ao[var_j] = 0;
            store_f = store_f - 0x01;
            var_j = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(store_f, "Proposal is not active");
        }
        storage_map_ah[var_j] = (0x01 * 0x01) | (uint248(storage_map_ah[var_j]));
        storage_map_ah[var_j] = (0 * 0x0100) | (uint248(storage_map_ah[var_j]));
        store_i = store_i + 0x01;
        var_j = 0x09;
        storage_map_ap[var_j] = arg0;
        require(!(0 < store_f), "Proposal is not active");
        require(0 < store_f, "Proposal is not active");
        var_j = 0x08;
        require(storage_map_an[var_j] - arg0, "Proposal is not active");
        require(0x01, "Proposal is not active");
        require(!((store_f - 0x01) > store_f), "Proposal is not active");
        require((store_f - 0x01) < store_f, "Proposal is not active");
        require(0 < store_f, "Proposal is not active");
        var_j = 0x08;
        storage_map_an[var_j] = storage_map_ao[var_j];
        require(store_f, "Proposal is not active");
        var_j = 0x08;
        storage_map_ao[var_j] = 0;
        store_f = store_f - 0x01;
    }
    
    /// @custom:selector    0x013cf08b
    /// @custom:signature   proposals(uint256 arg0) public view
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function proposals(uint256 arg0) public view {
        require(arg0 == arg0);
        uint256 var_b = arg0;
        if (storage_map_aq[var_b]) {
            require(bytes1(storage_map_aq[var_b]));
            var_b = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(bytes1(storage_map_aq[var_b]) - ((storage_map_aq[var_b] / 0x02) < 0x20));
            require(bytes1(storage_map_aq[var_b]));
            var_b = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(bytes1(storage_map_aq[var_b]) - ((storage_map_aq[var_b] / 0x02) < 0x20));
            require(!(storage_map_aq[var_b]) / 0x02);
            var_b = 0x07 + keccak256(var_b);
            require(0x1f < (storage_map_aq[var_b] / 0x02));
        }
    }
    
    /// @custom:selector    0x2a649435
    /// @custom:signature   resetProposal(uint256 arg0) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function resetProposal(uint256 arg0) public payable {
        require(arg0 == arg0);
        require((address(msg.sender)) == (address((((owner / 0x01))))), "Only owner can call this function");
        uint256 var_g = arg0;
        if (storage_map_h[var_g] / 0x01) {
            var_g = arg0;
            storage_map_h[var_g] = (0 * 0x01) | (uint248(storage_map_h[var_g]));
            storage_map_h[var_g] = (0x01 * 0x0100) | (uint248(storage_map_h[var_g]));
            storage_map_k[var_g] = 0;
            storage_map_o[var_g] = 0;
            var_g = address(storage_map_w[var_g] / 0x01);
            storage_map_v[var_g] = (0x01 * 0x01) | (uint248(storage_map_v[var_g]));
            require(bytes1(storage_map_h[var_g] / 0x01), "Proposal not approved");
            require(!(0 < store_f), "Proposal not approved");
            require(0 < store_f, "Proposal not approved");
            require(0x01, "Proposal not approved");
            require(!(0 < store_i), "Proposal not approved");
            require(0 < store_i, "Proposal not approved");
            var_g = 0x09;
            require(storage_map_g[var_g] - arg0, "Proposal not approved");
            require(0x01, "Proposal not approved");
            require(!((store_i - 0x01) > store_i), "Proposal not approved");
            require((store_i - 0x01) < store_i, "Proposal not approved");
            require(0 < store_i, "Proposal not approved");
            var_g = 0x09;
            storage_map_g[var_g] = storage_map_ar[var_g];
            require(store_i, "Proposal not approved");
            var_g = 0x09;
            storage_map_ar[var_g] = 0;
            store_i = store_i - 0x01;
            store_f = store_f + 0x01;
            var_g = 0x08;
            storage_map_as[var_g] = arg0;
            require(!(0 < store_i), "Proposal not approved");
            require(0 < store_i, "Proposal not approved");
            var_g = 0x09;
            require(storage_map_g[var_g] - arg0, "Proposal not approved");
        }
    }
}
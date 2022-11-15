//SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "../src/LlamaPayVestingReasons.sol";

contract LlamaPayVestingReasonsScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        LlamaPayVestingReasons reasonsContract = new LlamaPayVestingReasons{
            salt: bytes32("llamao")
        }();
        vm.stopBroadcast();
    }
}

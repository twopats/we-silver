pragma solidity ^0.8.0;

import "../src/WeThePeopleSilver.sol";
import {Script} from "forge-std/Script.sol";

contract DeployWeThePeopleSilver is Script {
       function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEV_PK");
        vm.startBroadcast(deployerPrivateKey);

        new WeThePeopleSilver();

        vm.stopBroadcast();
    } 

}


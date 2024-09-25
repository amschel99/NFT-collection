// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Whitelist{
    uint8 public maxWhiteListAdresses;
    mapping (address=>bool) public whitelistAdresses;
    uint8 public numAdressesWhitelisted;
    constructor(uint8 _maxWhiteListAdresses){
        maxWhiteListAdresses=_maxWhiteListAdresses;
    }


    function addAdressToWhiteList() public {
        require(!whitelistAdresses[msg.sender], "User has already been whitelisted");
        require(numAdressesWhitelisted<maxWhiteListAdresses, "Max adresses have been whitelisted");
       
        whitelistAdresses[msg.sender]=true;
         numAdressesWhitelisted+=1;


    }
}
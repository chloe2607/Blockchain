// Secret.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Secret {
    mapping(address => uint256) private secrets;

    function setSecret(uint256 secretValue) public {
        secrets[msg.sender] = secretValue;
    }

    function getSecret() public view returns (uint256) {
        return secrets[msg.sender];
    }
}

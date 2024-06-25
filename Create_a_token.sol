// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract challenge 
{
    // Public variables to store token details
    string public token_name;
    string public token_abbrv; // also referred to as token symbol
    uint public total_supply;

     // Constructor to initialize token details (optional)
    constructor(string memory _name, string memory _symbol, uint _initialSupply) {
        token_name = _name;
        token_abbrv = _symbol;
        total_supply = _initialSupply;
        balance[msg.sender] = _initialSupply; // Allocate initial supply to deployer
    }

    // Mapping to store balances of addresses
    mapping(address => uint) public balance;

    // Mint function to increase total supply and balance of the recipient
    function mint(address recipient, uint value) public 
    {
        total_supply += value;
        balance[recipient] += value;
    }

    // Burn function to decrease total supply and sender balance with safety checks
    function burn(uint value) public 
    {
        require(balance[msg.sender] >= value, "Insufficient balance for burning");
        total_supply -= value;
        balance[msg.sender] -= value;
    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {
    // Public variables to store the details about the coin
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalTokens;

    // Mapping of addresses to balances
    mapping(address => uint256) public tokenBalances;

    // Event for minting of tokens
    event TokensMinted(address indexed to, uint256 amount);

    // Event for burning of tokens
    event TokensBurned(address indexed from, uint256 amount);

    // Constructor to initialize the token details
    constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _initialSupply) {
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        totalTokens = _initialSupply;

        // Assign the initial supply to the contract creator's balance
        tokenBalances[msg.sender] = _initialSupply;
    }

    // Mint function to increase the total supply and the balance of the address
    function mint(address recipient, uint256 amount) public {
        require(recipient != address(0), "Cannot mint to zero address");

        totalTokens += amount;
        tokenBalances[recipient] += amount;
        emit TokensMinted(recipient, amount);
    }

    // Burn function to decrease the total supply and the balance of the address
    function burn(address owner, uint256 amount) public {
        require(owner != address(0), "Cannot burn from zero address");
        require(tokenBalances[owner] >= amount, "Insufficient balance");

        totalTokens -= amount;
        tokenBalances[owner] -= amount;
        emit TokensBurned(owner, amount);
    }
}

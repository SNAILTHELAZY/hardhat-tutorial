// This tells the compiler which version of solidity compiler is used
pragma solidity ^0.7.0;

import 'hardhat/console.sol';

// main building block of a smart contract
contract Token{
    // the following defines the string variables to identifies a token
    // public modifier makes the variable can be accessed by outside.
    string public name = "My Hardhat Token";
    string public symbol = "MHT";

    // an unsigned integer variable indicates the total supply of the token stored within the chain network.
    uint256 public totalSupply = 100000000;

    // address connect to ethereum account
    address public owner;

    // mapping is like dictionary which is a key-value map. For this contract, this variable used to store the account balance
    mapping(address=>uint256)balances;

    // constructor is for initialization
    constructor(){
        // msg.sender indicates who is interact with the contract
        // for this contract, this is used to assign the owner and its account balance.
        balances[msg.sender] = totalSupply;
        owner=msg.sender;
    }

    // to define a function, it just like TS and JS, which use the function keyword to declare functions.
    // external modifier makes the function to only callable from outside of the contract.
    function transfer(address to,uint256 amount)external{
        console.log("Sender balance is %s tokens", balances[msg.sender]);
        console.log("Trying to send %s tokens to %s", amount, to);
        // require will check if the condition of the first parameter is true before running the statement below
        // if the condition returns false, it will assert the function and output the debug message for the console if there is any value in the second parameter
        require(balances[msg.sender]>=amount,"Not enough tokens");

        balances[msg.sender]-=amount;
        balances[to]+=amount;
    }

    // view modifier indicates a function that is not involved with any transaction.
    // you may consider the functions with view modifier is just a readonly function
    function balanceOf(address account) external view returns (uint256){
        return balances[account];
    }
}
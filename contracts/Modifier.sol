// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Modifier{
    address public owner;
    bool public paused;
    mapping (address => uint) public balances;

    constructor(){
        owner = msg.sender;
        paused = false;
        balances[owner] = 1000;
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"You are not the one.");
        _;
    }
    modifier notPaused(){
        require(paused == false,"Contract is paused");
        _;
    }
    //use not paused modifier in this function
    function transfer(address to,uint amount) public notPaused{
        require(balances[msg.sender]>=amount, "Insufficent balance");

        balances[msg.sender] -= amount;
        balances[to]+=amount;
    }




    // function pause() public notPaused{
    //     paused = true;
    // }
    // function changeOwner (address newOwner) public onlyOwner{
    //     owner = newOwner;
    // }


}
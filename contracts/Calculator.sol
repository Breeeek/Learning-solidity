// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Calculator{
    uint256 result = 0;
    //add function 
    function add(uint256 num) public{
        result+=num;
    }
    //subtraction function
    function sub(uint256 num) public{
        result-=num;
    }
    //multiply function
    function mul(uint256 num) public{
        result*=num;
    }
    function get() public view returns(uint256){
        return result;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Twitter{
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    //fixed size array
    uint[10] public myFixedSizeArr;
    string[5] public names;

    function get(uint i) public view returns (uint){
        return arr[i];
    }
}
pragma solidity ^0.6.12;

contract Test {
    uint private value; 
    constructor(uint x) public {
        value = x;
    }

    function foo(uint y) external view returns (bool) {
        return value == y;
    } 
}
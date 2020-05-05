pragma solidity ^0.5.14;

contract Test {
    uint private value; 
    constructor(uint x) public {
        value = x;
    }

    function foo(uint y) external view returns (bool) {
        return value == y;
    } 
}
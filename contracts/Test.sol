pragma solidity ^0.6.12;

contract Test {
    uint internal value; 
    constructor(uint x) public {
        value = x;
    }

    function foo(uint y) external returns (bool) {
        uint v = value;
        value = y;
        return v == y;
    } 
}
pragma solidity ^0.5.0;

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
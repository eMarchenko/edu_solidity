pragma solidity ^0.5.14;

contract Test {
    uint private value; 
    constructor(uint x) public {
        value = x;
    }

    function foo(uint y) external returns (bool) {
        uint x = value;
        if (x == y) {
            return true;
        }
        value = uint(keccak256(abi.encode(x+y)));
        return false;
    } 
}
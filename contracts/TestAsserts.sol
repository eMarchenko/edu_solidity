pragma solidity ^0.6.12;

import "./Test.sol";

contract TestAsserts is Test(2) {

    function assertNotFive(uint y) external view {
        assert(value != y);
    } 
}
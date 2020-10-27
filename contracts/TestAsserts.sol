pragma solidity ^0.6.12;

import "./Test.sol";

contract TestAsserts is Test(2) {

    function assertNotFive(uint y) external view {
        assert(value != y);
    } 
    function assertFails() external pure {
        assert(false);
    } 


    function echidnaNotFive() external view returns (bool) {
        return value != 5;
    }
    function echidnaShouldFail() external pure returns (bool) {
        return false;
    } 
}
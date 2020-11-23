pragma solidity ^0.5.0;

import "./Test.sol";

contract TestAsserts {
    Test test = new Test(2);

    function echidnaNotFive() public view returns (bool) {
        return test.value() != 5;
    }
    function echidnaShouldFail() public pure returns (bool) {
        return false;
    }
    function echidnaShouldPass() public pure returns (bool) {
        return true;
    } 
}
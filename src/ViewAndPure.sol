pragma solidity ^0.8.0;

contract ViewAndPure {
    uint256 public x = 1;

    function addToX(uint256 y) public view returns (uint256) {
        return x + y;
    }

    function addToXInvalid(uint256 y) public view returns (uint256) {
        return x += 1;
    }

    function foo() public {}

    function invalidViewFunc() public view {
        foo();
    }
}

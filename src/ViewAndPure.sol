pragma solidity ^0.8.0;

contract ViewAndPure {
    // State Variable
    uint256 public x = 1;

    // view functions promise not to modify the state

    function addToX(uint256 y) public view returns (uint256) {
        return x + y;
    }

    // function addToXInvalid(uint256 y) public view returns (uint256) {
    //     return x += 1;
    // }

    // function foo() public {}

    // function invalidViewFunc() public view {
    //     foo();
    // }

    // pure function does not modify or read state
    // this function takes in 2 parameters and adds them together
    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j;
    }
}

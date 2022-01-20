pragma solidity ^0.8.0;

contract EtherUnits {
    uint256 public oneWei = 1 wei;
    uint256 public oneEther = 1 ether;

    function testOneWei() public pure returns (bool) {
        return 1 wei == 1;
    }

    function testOneEther() public pure returns (bool) {
        return 1 ether == 1e18 wei;
    }
}

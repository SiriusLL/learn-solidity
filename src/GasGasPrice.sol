pragma solidity ^0.8.0;

contract Gas {
    function testGasRefund() public returns (uint256) {
        return tx.gasprice;
    }

    uint256 public i = 0;

    function forever() public {
        while (true) {
            i += 1;
        }
    }
}

pragma solidity ^0.8.0;

contract ReturnMultiple {
    mapping(uint256 => uint256) map;
    uint256[] arr;
    uint256[9][9] arr2DFixed;
    uint256[][] arr2D;

    // // function mapOutput() public returns (mapping(uint => uint) memory) {
    // //   return map;
    // // }

    // // function multiDimFixedSizeArrayOutput() public view returns (uint[9][9] memory) {
    // //   returns arr2DFixed;
    // // }

    // function multiDimDynamicSizeArrayOutput() public returns (uint[][] memory) {
    //   return arr2D;
    // }

    // function arrayOutput() public view returns (uint[] memory) {
    //   return arr;
    // }

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }

    function returnMultipleVals()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, true, 2);
    }

    function named()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        x = 1;
        b = true;
        y = 2;
    }

    // function f() public returns (uint) {
    //     return 1;
    // }

    // function g() public returns (uint) {
    //     return 2;
    // }

    // function h() public returns (uint, uint) {
    //     return (f(), g());
    // }

    function destructingAssignments()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMultipleVals();

        // Values can be left out.
        (uint256 x, , uint256 y) = (4, 5, 6);

        return (i, b, j, x, y);
    }
}

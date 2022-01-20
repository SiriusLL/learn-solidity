pragma solidity ^0.8.0;

contract SimpleStorage {
    //when making variable public a get() fn will auto make when compile
    string public text;

    // _parameter is convention inorder to not conflict with state variable
    function set(string memory _text) public {
        text = _text;
    }

    function get() public view returns (string memory) {
        return text;
    }
}

//view - code does not change the state of the blockchain
//pure - function does not change the state of the blockchain && does not read state variables

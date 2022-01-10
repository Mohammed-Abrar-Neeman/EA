// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Greeter {
    
    string private greeter;

    function setGreeter(string memory _message) public {
        greeter = _message;
    }

    function getGreeter() public view returns(string memory){
        return greeter;
    }
}

/ SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Owner {
    address owner;

    event Success(address _owner);

    function setOwner(address _owner) public {
        owner = _owner;
        emit Success(owner);
    }

    function getCurrentOwner() public view returns(address){
        return owner;
    }

}
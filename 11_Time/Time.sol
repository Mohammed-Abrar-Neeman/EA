// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract time {

    function getTime(uint time) public view returns(uint){
        if(block.timestamp > time){
            return time + 1 hours + 20 minutes + 30 seconds;
        }
        return 0;
    }
}
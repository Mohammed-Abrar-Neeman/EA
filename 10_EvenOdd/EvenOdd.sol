// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";

contract evenodd {

    using SafeMath for uint256;

    function check(uint256 number) public pure returns(string memory){
        if(number.mod(2) == 0){
            return "given number is even";
        }
        return "given number is odd";
    }
}
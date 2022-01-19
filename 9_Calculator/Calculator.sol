// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";

contract calculator {

    using SafeMath for uint256;

    function addition(uint256 num1, uint256 num2) public pure returns(uint256){
        return num1.add(num2);
    }

    function subtraction(uint256 num1, uint256 num2) public pure returns(uint256){
        return num1.sub(num2);
    }

    function multiplication(uint256 num1, uint256 num2) public pure returns(uint256){
        return num1.mul(num2);
    }

    function division(uint256 num1, uint256 num2) public pure returns(uint256){
        return num1.div(num2);
    }
}
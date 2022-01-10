// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract HardCodedValue {
    uint integer_value = 5;

    function checkIntValue() public view returns(uint) {

        return integer_value;
    }
}
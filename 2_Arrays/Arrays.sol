pragma solidity ^0.5.16;

contract Array{
    uint[] public intArray; //Dynamic Array Declation

    //Add data in an array
    function feedArray(uint _number) public { 
        intArray.push(_number);
    }

    //Get data of an array
    function getArray() public view returns(uint[] memory){
        return intArray;
    }

    //Get length of an array
    function arrayLength() public view returns(uint){
        return intArray.length;
    }

    //Get sum of elements of an array
    function sumArray() public view returns(uint){
        uint sumOfArray;

        for(uint i=0;i<intArray.length;i++){
            sumOfArray += intArray[i];
        }
        return sumOfArray;
    }

    //Search a particular element in an array
    function fetchArrayElement(uint _index) public view returns(uint){
        return intArray[_index];
    }
}
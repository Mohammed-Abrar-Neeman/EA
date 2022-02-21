pragma solidity 0.8.0;

contract SelfWhitelist {

    mapping (address => bool) isWhitelist;
    address[] public whitelistedAddress;

    function whitelist(address newAddress) public returns(bool success){
        require(!isWhitelist[newAddress]);
        whitelistedAddress.push(newAddress);
        isWhitelist[newAddress] = true;
        return true;
    }

    function check(address checkAddress) public view returns(bool result){
        return isWhitelist[checkAddress];
    }
}
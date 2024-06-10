// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract UniqueContract {
    uint256 private number;
    string private entityName;
    bool private isHuman;
    address private location;

    event NumberUpdated(uint256 newNumber);
    event NameUpdated(string newName);
    event HumanStatusUpdated(bool newStatus);
    event LocationUpdated(address newLocation);

    function updateNumber(uint256 _number) public returns (uint256) {
        number = _number;
        emit NumberUpdated(_number);
        return number;
    }
    
    function updateName(string memory _name) public returns (string memory) {
        entityName = _name;
        emit NameUpdated(_name);
        return entityName;
    }
    
    function updateHumanStatus(bool _status) public returns (bool) {
        isHuman = _status;
        emit HumanStatusUpdated(_status);
        return isHuman;
    }
    
    function updateLocation(address _location) public returns (address) {
        location = _location;
        emit LocationUpdated(_location);
        return location;
    }
    
    function fetchNumber() public view returns (uint256) {
        return number;
    }
    
    function fetchName() public view returns (string memory) {
        return entityName;
    }
    
    function fetchHumanStatus() public view returns (bool) {
        return isHuman;
    }
    
    function fetchLocation() public view returns (address) {
        return location;
    }
}

pragma solidity ^0.6.0;

contract SimpleMappingExample {
    
    // MARK: Properties
    
    mapping(uint => bool) public myMapping;
    
    mapping(address => bool) public myAddressMapping;
    
    // MARK: Functions
    
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    
    // Good for whielisting addresses
    function setMyAddressTrue() public {
        myAddressMapping[msg.sender] = true;
    }
    
}


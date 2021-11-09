pragma solidity ^0.5.13;

contract WorkingWithVariable { 
    uint256 public myUint;
    bool public myBool;
    uint8 public myUint8;
    address public myAddress;
    string public myString;
    
    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }
    
    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }
    
    function incrementUint() public {
        myUint8++;
    }
    
    function decrementUint() public {
        myUint8--;
    }
    
    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    
    function getBalanceAmountOfAddress() public view returns(uint) {
        // returns in units of 'wei' - smallest unit
        return myAddress.balance;
    }
    
    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}

pragma solidity ^0.5.13;

contract RestrictContract {
    
    // MARK: Properties
    address owner;
    
    // MARK: Init
    constructor() public {
        owner = msg.sender;
    }
    
    
    // MARK: Functions 
    function sendMoney() public payable {
        
    }
    
    function withdrawAllMoney(address payable _to) public {
        
        // Only the owner can withdraw the money 
        require(msg.sender == owner, "You are not the owner!");
        
        _to.transfer(address(this).balance);
    }
    
}


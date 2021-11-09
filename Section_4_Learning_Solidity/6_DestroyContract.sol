pragma solidity ^0.5.13;

contract DestroyContract {
    
    // MARK: Properties
    address owner;
    
    // MARK: Lifecycle
    constructor() public {
        owner = msg.sender;
    }
    
    /// Sends all of the funds to whatever address the owner specifies
    function destoryContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner!");
        selfdestruct(_to);
    }
    
    // MARK: Money Functions 
    function sendMoney() public payable {
        
    }
    
}


pragma solidity ^0.5.13;

contract PauseContract {
    
    // MARK: Properties
    address owner;
    bool public paused;
    
    // MARK: Init
    constructor() public {
        owner = msg.sender;
    }
    
    // MARK: Pause 
    
    function setPaused(bool _paused) public {
        require(msg.sender == owner, "You are not the owner!");
        paused = _paused;
    }
    
    
    // MARK: Money Functions 
    function sendMoney() public payable {
        
    }
    
    function withdrawAllMoney(address payable _to) public {
        
        // Only the owner can withdraw the money 
        require(msg.sender == owner, "You are not the owner!");
        
        // Only contracts that are not paused can be called
        require(paused == false, "Contract is paused.");
        
        _to.transfer(address(this).balance);
    }
    
}


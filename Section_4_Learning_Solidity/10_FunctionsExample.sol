pragma solidity ^0.5.13;

contract FunctionsExample {
    
    // Constructor 
    constructor() public {
        
    }
    
    // Fallback function
    function () external payable {
        
    }
    
    // Pure function 
    function convertWeiToEther(uint _amountInWei) public pure returns(uint) {
        return _amountInWei / 1 ether;
    }

    // View function 
    function getOwner() public view returns(address) {
        // return owner;
    }

}

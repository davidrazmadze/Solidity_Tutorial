pragma solidity ^0.5.13;

contract MappingStructExplained {
    
    mapping(address => uint) public balanceReceived;
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function sendMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }
    
    // MARK: Withdraw money from smart contract
    
    // If someone wants to withdrew all their money that they put into the smart contract
    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        _to.transfer(balanceToSend);
    }
    
    // Withdrew a specified amount of funds
    function withdrawMoney(address payable _to, uint _amount) public {
        require(balanceReceived[msg.sender] >= _amount, "You don't have enough funds");
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
    
}


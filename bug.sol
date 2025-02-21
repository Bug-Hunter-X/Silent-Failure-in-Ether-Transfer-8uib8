```solidity
function withdraw(uint amount) public {
    require(amount <= balances[msg.sender], "Insufficient balance");
    balances[msg.sender] -= amount;
    (bool success, ) = msg.sender.call{value: amount}('');
    require(success, "Transfer failed");
}
```
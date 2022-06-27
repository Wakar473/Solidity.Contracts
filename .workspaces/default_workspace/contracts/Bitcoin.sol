//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract MyBitcoin {
    address public wakar;
    mapping (address =>uint) public balances;
    uint8 public constant decimals = 12;

  
  mapping(address => mapping(address => uint)) public _approval;
  mapping(address => mapping(address => uint)) public _allowance;


constructor() {
    wakar =msg.sender;
   

}
   function mint(address receiver,uint amount) public {
       require(msg.sender == wakar,"your not the minter");
       balances[receiver] += amount;
}

function burn(address receiver,uint amount) public {
       require(msg.sender == wakar,"your not the minter");
       balances[receiver] -= amount;
}

function transfer(address receiver, uint amount) public {
    require(balances[msg.sender]>=amount);
    balances[msg.sender] -= amount;
    balances[receiver] += amount;
}
function transferFrom(address current_sender, address receiver, uint amount) public {
    current_sender=msg.sender;
 balances[current_sender] -= amount;
    balances[receiver] += amount;

}
function Approval(address spender,uint numTokens) public  returns (bool) {
_allowance[msg.sender][spender]=numTokens;
 
return true;
}
function allowance(address sender,address spender) public view returns (uint) {
return _approval[sender][spender];
}
}
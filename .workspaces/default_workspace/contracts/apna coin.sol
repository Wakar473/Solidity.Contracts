//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0<0.9.0;

function totalSupply() view returns (uint256);

function balanceOf(address tokenOwner) view returns (uint);
function allowance(address tokenOwner, address spender) public view returns (uint);
function transfer(address to, uint tokens) public returns (bool);
function approve(address spender, uint tokens)  public returns (bool);
function transferFrom(address from, address to, uint tokens) public returns (bool);

event Approval(address indexed tokenOwner, address indexed spender,uint tokens);
event Transfer(address indexed from, address indexed to,uint tokens);

 string public constant name;Apna_coin
string public constant symbol;AC
uint8 public constant decimals;12

mapping(address => uint256) balances;
mapping(address => mapping (address => uint256)) allowed;

uint256 totalSupply_;1000
constructor(uint256 total) public {
   totalSupply_ = total;
   balances[msg.sender] = _totalSupply;
}

function totalSupply() public view returns (uint256) { return totalSupply_;}

function balanceOf(address tokenOwner) public view returns (uint) { return balances[tokenOwner];}

function transfer(address receiver, uint numTokens) public returns (bool) {
  require(numTokens <= balances[msg.sender]);
  balances[msg.sender] = balances[msg.sender] — numTokens;
  balances[receiver] = balances[receiver] + numTokens;
  emit Transfer(msg.sender, receiver, numTokens);
  return true;
}

function approve(address delegate,uint numTokens) public returns (bool) {
  allowed[msg.sender][delegate] = numTokens;
  emit Approval(msg.sender, delegate, numTokens);
  return true;
}

function allowance(address owner,address delegate) public view returns (uint) {
  return allowed[owner][delegate];
}

function transferFrom(address owner, address buyer,  uint numTokens) public returns (bool) {
  require(numTokens <= balances[owner]);
  require(numTokens <= allowed[owner][msg.sender]);
  balances[owner] = balances[owner] — numTokens;
  allowed[owner][msg.sender] =allowed[from][msg.sender] — numTokens;
  balances[buyer] = balances[buyer] + numTokens;
  Transfer(owner, buyer, numTokens);
  return true;
}

}


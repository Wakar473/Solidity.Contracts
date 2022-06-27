//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.6.6;

// Creating a Contract
contract bitcoin
{

// Table to map addresses
// to their balance
mapping(address => uint256) balances;

// Mapping owner address to
// those who are allowed to
// use the contract
mapping(address => mapping (
		address => uint256)) allowed;

// totalSupply
uint256 _totalSupply = 500;

// owner address
address public Bitcoin;

// Triggered whenever
// approve(address _spender, uint256 _value)
// is called.
event Approval(address indexed _owner,
				address indexed _spender,
				uint256 _value);

// Event triggered when
// tokens are transferred.
event Transfer(address indexed _from,
			address indexed _to,
			uint256 _value);

// totalSupply function
function totalSupply()
		public view returns (
		uint256 theTotalSupply)
{
theTotalSupply = _totalSupply;
return theTotalSupply;
}

// balanceOf function
function balanceOf(address _owner)
		public view returns (
		uint256 balance)
{
return balances[_owner];
}

// function approve
function approve(address _spender,
				uint256 _amount)
				public returns (bool success)
{
	// If the address is allowed
	// to spend from this contract
allowed[msg.sender][_spender] = _amount;
	
// Fire the event "Approval"
// to execute any logic that
// was listening to it
emit Approval(msg.sender,
				_spender, _amount);
return true;
}
}
//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract shib{

    
constructor() {
    creater =msg.sender;
}



    event transfer(address sender, address receiver, uint amount);
    event approval(address sender, address receiver, uint amount);


string public constant name ="shib";
string public constant symbol ="shb";
uint12 public constant decimal =12;


    mapping (address =>uint) public balances;
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

   function mint(address receiver,uint amount) public {
       require(msg.sender == minter,"your not the minter");
       balances[receiver] += amount;
}

function burn(address receiver,uint amount) public {
       require(msg.sender == minter,"your not the minter");
       balances[receiver] -= amount;
}

function approval (address receiver, uint amount) public {
    require(balances[msg.sender]>=amount);
    balances[msg.sender] -= amount;
    balances[receiver] += amount;
}

}
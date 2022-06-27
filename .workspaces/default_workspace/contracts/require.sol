//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Require{

    address public Owner = msg.sender;
    uint public age = 25;

    function CheckRequire(uint _x) public {
        age = age+25;
        require(_x>2,"value of x is less than 2");
    }


    function onlyOwner() public {
        require(Owner==msg.sender,"you are not the owner");
        age = age-2;
    }
}
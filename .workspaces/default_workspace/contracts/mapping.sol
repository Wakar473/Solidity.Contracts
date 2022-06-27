//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
// contract Mapping
// {
//     mapping(uint=>string) public roll_no;
//     function setter(uint keys,string memory value) public
//     {
//      roll_no[keys]=value;
//     }
// }


// {
//     mapping(uint=>string) public emp_id;
//     function setIds() public {
//         emp_id[31]="amit";
//          emp_id[32]="rahul";
//           emp_id[33]="arun";
//            emp_id[30]="amitab";
       
//     } 
// }
contract Mapping{
    mapping(address=>donor_dts) public acc_info;

    
struct donor_dts{
    string name;
    uint age;
    string add;
    uint don;
}


    function set(string memory _name, uint _age, string memory _add, uint _don) public {

        acc_info[msg.sender] = donor_dts(_name, _age, _add, acc_info[msg.sender].don+_don);

    }
    function delete_info() public{
        delete acc_info[msg.sender];
    }
    }

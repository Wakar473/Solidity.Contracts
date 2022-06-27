//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

mapping (bytes32 => bool) ConsensusStatus;
function addPerson(bytes32_Name, uint_age, bytes32_Value, bytes32_country, bytes32_state, bytes32_city, bytes32_Email, uint _phone) returns(bool success) {
    person memory newPerson;

    newPerson.Name = _Name;
    nwePerson.age = _age;
    nwePerson.Male = _Value;
    nwePerson.State = _State;
    nwePerson.Email = _Email;
    nwePerson.phone = _Phone;

if (ConsensusStatus[_Name].Member1Details && ConsensusStatus[_Name].Member2Details) {
        People.push(newPerson); //People is the tuple storing the info of the city residents
return true;

        }
}
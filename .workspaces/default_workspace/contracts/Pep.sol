//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract StructAddEmployeeInfo{
  
   struct Employee{
       

       int empid;
       string name;
       string department;
       string designation;
   }
   
   Employee []emps;
  
   function addEmployee( int empid, string memory name, string memory department, string memory designation) public
   {
        Employee memory e =Employee(empid, name, department,   designation);  emps.push(e);
   }
  
 
   function getEmployee(int empid  ) public view returns(string memory, string memory, string memory)
   { 
        uint i;

       for(i=0;i<emps.length;i++)
       {
           Employee memory e =emps[i];
           
          
           if(e.empid==empid)
           {
                  return(e.name,  e.department,  e.designation);
           }
       }
       
   
     return("Not Found","Not Found", "Not Found");
   }
}
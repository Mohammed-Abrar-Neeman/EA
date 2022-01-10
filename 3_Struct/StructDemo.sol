// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract StructDemo {

    //structure Employee
    struct Employee {
        uint empid;
        string name;
        string department;
        string designation;
    }

    //Dynamic Array of type Employee
    Employee[] emps;

    //Adding Employee details to an Array
    function addEmployee(uint _empid,string memory _name, string memory _department,string memory _designation) public {
        emps.push(Employee(_empid,_name,_department,_designation));
    }

    //get Employee details from an Array
    function getEmployee(uint _empid) public view returns(string memory _name, string memory _department,string memory _designation){
        uint i;
        for(i=0;i<emps.length;i++){
            Employee memory employee = emps[i];

            if(employee.empid == _empid){
                _name = employee.name;
                _department = employee.department;
                _designation = employee.designation;

                return(_name,_department,_designation);
            }
        }
        return("name not found","department not found","designation not found");
    }
}
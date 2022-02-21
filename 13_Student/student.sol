pragma solidity 0.8.0;

contract student {

    struct student {
        string sname;
    }

    mapping(uint => student) students;

    event Student(uint rollno);

    function enroll(uint rollno, string memory name) public {
        students[rollno].sname = name;
        emit Student(rollno);
    }

    function getstudent(uint rollno) public view returns(string memory){

         return students[rollno].sname;
    }
}
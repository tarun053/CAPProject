namespace BusinessApp.db;

context Employee {

    entity employeeDetails {
        key EMPLOYEE_ID      : String(10) not null;
            DESCRIPTION : String(50) not null;
            DEPARTMENT  : String(20);
            EMPLOYEE_NAME  : String(50) not null;
            association : association[1, 1..*] to Employee.roleEnrollments { EMPLOYEE_ID };
    };

    entity roleEnrollments {
        key EMPLOYEE_ID     : String(20) not null;
        key ROLE_ID  : String(20) not null;
            ROLE_NAME : String(20) not null;
            EMPLOYEE_NAME  : String(50) not null;
            EMAIL      : String(40) not null;
            LOCATION   : String(20);
    };
};
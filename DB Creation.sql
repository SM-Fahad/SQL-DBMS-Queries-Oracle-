create table Student_Info (
    Student_ID NUMBER(10) GENERATED ALWAYS AS IDENTITY primary key,
    First_Name VARCHAR2 (100),
    Last_Name VARCHAR2 (100), 
    Contact VARCHAR2 (12),
    Date_of_Birth DATE,
    Email VARCHAR2 (50) UNIQUE,
    IS_Active CHAR (1) DEFAULT 'Y'
);

select * from student_info;

insert into Student_info (
    First_Name, Last_Name, Contact, date_of_birth, Email, is_active
) VALUES (
     'Ariful', 'Islam', '+88045745478', TO_DATE ('1998-03-01', 'YYYY-MM-DD'), 'arifulislam@gmail.com', 'Y'
);

-- adding data
    
SELECT * FROM student_info;


   
--update data

alter table student_info drop column student_ID;

alter table student_info add Student_ID Number(10) generated ALWAYS AS IDENTITY primary key not null;

alter table Student_Info add student_id Number(10) generated ALWAYS AS IDENTITY primary key;

alter table student_info modify email varchar2 (50);

drop table student_info;


create table EMP1288731 (
    E_ID NUMBER(5) GENERATED ALWAYS AS IDENTITY primary key,
    E_Name VARCHAR2 (100),
    Salary Number (10,2), 
    Hire_Date DATE,
    Address VARCHAR2 (50)
);

select * from emp1288731;

alter table EMP1288731 add Dept_ID Number (10);

insert into EMP1288731 (
    E_Name, Salary, Hire_Date, Address, Dept_ID
) VALUES (
     'Ariful Islam', 50000, TO_DATE ('2022-03-01', 'YYYY-MM-DD'), 'Middle Badda, Dhaka', '2'
);

insert into EMP1288731 (
    E_Name, Salary, Hire_Date, Address, Dept_ID
) VALUES (
     'Mohammad Fahad', 250000, TO_DATE ('2020-03-01', 'YYYY-MM-DD'), 'North Badda, Dhaka', '1'
);

insert into EMP1288731 (
    E_Name, Salary, Hire_Date, Address, Dept_ID
) VALUES (
     'MD Sakib', 500000, TO_DATE ('2021-03-01', 'YYYY-MM-DD'), 'Malaysia', '1'
);

insert into EMP1288731 (
    E_Name, Salary, Hire_Date, Address, Dept_ID
) VALUES (
     'Ryhan Mhamud', 150000, TO_DATE ('2020-03-01', 'YYYY-MM-DD'), 'North Badda, Dhaka', '3'
);

insert into EMP1288731 (
    E_Name, Salary, Hire_Date, Address, Dept_ID
) VALUES (
     'MD Mahmud Hasan Reyad', 160000, TO_DATE ('2022-03-01', 'YYYY-MM-DD'), 'Mirpur, Dhaka', '2'
);

-- data added

select * from emp1288731 where E_name like 'A%';

--3 
select E_name, Salary from emp1288731 where salary > 50000;

select min(salary) from emp1288731;

select E_name, Salary from emp1288731 where salary = (select min(salary) from emp1288731);

UPDATE emp1288731 set E_Name = 'Reyad' where E_ID = 5;

select * from emp1288731;




















select * from employees

SELECT * FROM employees order by manager_id

SELECT * FROM employees fetch first 7 rows only;

SELECT * FROM employees order by manager_id desc, first_name;

SELECT * FROM employees where employee_id in (2,3,5,7);

SELECT * FROM employees where first_name like '%ma';
SELECT * FROM employees where first_name like 'M%';
SELECT * FROM employees where first_name like '%m%';
SELECT * FROM employees where first_name like '%__a';

SELECT * FROM employees where employee_id not in (2,3,5,7,107);
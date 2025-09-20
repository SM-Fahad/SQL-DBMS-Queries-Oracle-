select * from products;

select list_price, round (list_price,0) as rounded from products;

alter table products add Demo_List_Price number (9,4);

update products set Demo_List_Price = List_Price + 0.11122;

select Demo_List_Price, round (Demo_List_Price,2) as rounded from products;

select Demo_List_Price, trunc (Demo_List_Price,2) as Trunc from products;

select Demo_List_Price, mod (Demo_List_Price,10) as MOD from products;

select Demo_List_Price, ceil (Demo_List_Price) as ceil from products;

select Demo_List_Price, floor (Demo_List_Price) as floor from products;

-- Date Fucntion

select sysdate from dual;

select current_date from dual;

select add_months (sysdate,2) from dual;

select months_between(To_date('2024-08-18' , 'YYYY-MM-DD'), To_date('2025-05-17' , 'YYYY-MM-DD')) from dual;

select months_between(To_date('2024-08-18' , 'YYYY-MM-DD'), sysdate) from dual;

select * from employees;

select * from employees where hire_date > To_date ('2016-06-10', 'YYYY-MM-DD');

select next_day (sysdate, 'Friday') from dual;

select last_day (sysdate) from dual;

select round (sysdate, 'Month') from dual;

select to_char (sysdate, 'DD-MM-YY') FROM DUAL;
select to_char (sysdate, 'DD-MON-YYYY-DAY') FROM DUAL;
select to_char (sysdate, 'DD-MON-YYYY HH12:MI:SS') FROM DUAL;

SELECT * FROM EMPLOYEES;
SELECT HIRE_DATE FROM EMPLOYEES;
SELECT FIRST_NAME, LAST_NAME, TO_CHAR (HIRE_DATE, 'DAY') AS JOINING_DAY FROM EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME, TO_CHAR (HIRE_DATE, 'DAY') AS JOINING_DAY FROM EMPLOYEES 
WHERE TRIM(TO_CHAR(HIRE_DATE, 'DAY'))='TUESDAY' 
AND hire_date > TO_DATE('2016-06-01', 'YYYY-MM-DD') 
AND hire_date < TO_DATE('2016-06-30', 'YYYY-MM-DD');

SELECT FIRST_NAME, LAST_NAME, TO_CHAR (HIRE_DATE, 'DAY') AS JOINING_DAY, TO_CHAR(HIRE_DATE, 'MONTH') AS JOINING_MONTH, TO_CHAR(HIRE_DATE, 'YYYY') AS JOINING_YEAR FROM EMPLOYEES 
WHERE TRIM(TO_CHAR(HIRE_DATE, 'DAY'))='TUESDAY' AND TRIM(TO_CHAR(HIRE_DATE, 'MONTH'))='JUNE';

SELECT CURRENT_TIMESTAMP FROM DUAL;
SELECT FIRST_NAME, LAST_NAME, (SYSDATE-HIRE_DATE)/7 AS WEEKS FROM EMPLOYEES WHERE CEIL((SYSDATE-HIRE_DATE)/7)>=480;
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE, HIRE_DATE+30 AS WEEKS FROM EMPLOYEES;

SELECT PHONE FROM STUDENT;
SELECT * FROM STUDENT;
SELECT NVL (NULL, 'N/A') FROM DUAL;
SELECT FIRST_NAME, GRADE_LEVEL, NVL(GRADE_LEVEL, 0) FROM STUDENT;

SELECT * FROM STUDENTS;
SELECT FIRST_NAME, EMAIL, NVL(EMAIL, 'NO EMAIL PROVIDED') FROM STUDENTS;

SELECT FIRST_NAME, EMAIL, NVL2(EMAIL, 'YES', 'NO') FROM STUDENTS;

SELECT FIRST_NAME, GRADE_LEVEL, NVL2(GRADE_LEVEL, ''|| (GRADE_LEVEL*10), 'NO') FROM STUDENTS;






















select upper (first_name) as name from employees;

select upper (last_name) as name from employees;

select upper (first_name || ' ' || last_name) as name from employees;

select lower (first_name || ' ' || last_name) as name from employees;

select initcap (first_name || ' ' || last_name) as name from employees;

select concat (first_name , last_name) as name from employees;

select * from employees;

select concat (phone , email) as contact from employees;

select substr (first_name, 1, 3) from employees; 

select * from countries; 

select country_name, upper (substr (country_name, 1,3)) as Country_Short_Code from countries;

select country_name,length (country_name) as Country_Charecter from countries;

select country_name,INSTR (country_name, 'a') as Country_Charecter from countries;

select country_name,INSTR (country_name, 'a',1,3) as Country_Charecter from countries where country_name='Malaysia';

select * from countries where country_name='Malaysia';

select * from products where product_name like '%HP%';

select * from products where lower (product_name) like lower ('%HP%');

select * from products where lower (product_name) like lower ('%xeon e5%');

select * from products where lower (product_name) like lower ('%xeon e5%') and (list_price between 1300.00 and 1500 or list_price > 2500.00);

select * from products where lower (product_name) like lower ('%xeon e5%') and (list_price >= 1300.00 and list_price <= 1500 or list_price > 2500.00);

select * from products where lower (product_name) like lower ('%xeon e5%') and (list_price >= 1300.00 and list_price <= 1500 or list_price > 2500.00) and description like '%2.6GHz%';

select replace (product_name, 'Xeon', 'AMD') from products;

select trim (product_name) from products;

select LPAD(product_name,15,'---') from products;

select RPAD(product_name,15,'---') from products;










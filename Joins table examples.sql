select * from employees;

select emp.employee_id, 
emp.first_name, 
emp.job_title,
emp.manager_id,
man.first_name Manager_Name
from employees emp left join employees man on emp.manager_id=man.employee_id 
order by 1;

select * from customers;

select * from orders;

select * from order_items order by 1;

select * from products;

--Joining 3 tables--
select orders.order_id, 
orders.customer_id, 
customers.NAME, 
orders.status, 
employees.first_name 
from orders left join customers on orders.customer_id=customers.customer_id 
left join employees on orders.salesman_id=employees.employee_id order by 1;

select odr.order_id, 
cus.name, 
odr.status, 
ot.product_id, 
prd.product_name,
ot.quantity, 
ot.unit_price , 
ot.quantity * ot.unit_price total_Price
from orders odr left join customers cus on odr.customer_id=cus.customer_id
left join order_items ot on odr.order_id=ot.order_id 
left join products prd on ot.product_id = prd.product_id order by 1;

select s.student_name, d.dept_id from students s 
full outer join departments d on s.dept_id=d.dept_id;

select s.student_name, d.dept_id from students s 
join departments d USING (dept_id);

select * from departments;
select * from students;

select s.student_name, d.dept_name from students s 
natural join departments d;

















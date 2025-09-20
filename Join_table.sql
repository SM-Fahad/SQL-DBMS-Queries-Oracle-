-- Problem solving
select * from orders;
select * from order_items;
select * from customers;
select * from employees;
select * from products;
select * from inventories;
select * from contacts;

--2
select o.order_id, c.name as customer_name, e.first_name || ' ' || e.last_name as salesman_name
from orders o 
join customers c on o.customer_id = c.customer_id
left join employees e on o.salesman_id = e.employee_id order by 1;

--3
select c.customer_id, c.name, o.order_id
from customers c
left join orders o on c.customer_id =o.customer_id;

--4
select o.order_id, p.product_name, oi.quantity, oi.unit_price
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id order by 1;


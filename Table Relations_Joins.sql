    select * from locations;
    select * from regions;
    
    select * from countries
    join regions on countries.region_id = regions.region_id;
    
    select c.country_name, l.address, l.postal_code, l.city, l.state from countries c
    join locations l on c.country_id = l.country_id;
    
    select * from countries c join locations l on c.country_id = l.country_id;
    
    select regions.region_name,
    countries.country_name,
    locations.address,
    locations.city
    FROM REGIONS JOIN COUNTRIES ON COUNTRIES . REGION_ID = REGIONS . REGION_ID 
    JOIN LOCATIONS ON COUNTRIES . COUNTRY_ID = LOCATIONS . COUNTRY_ID
    ORDER BY 1,2;
    
   SELECT * FROM orders
    INNER JOIN order_items USING ( order_id ) ORDER BY
    order_date DESC;
    
    select * from departments;
select * from students;

select *
from students st
inner join departments dp on st.dept_id = dp.dept_id;

select *
from students st
join departments dp on st.dept_id = dp.dept_id;

select *
from departments dp
left join students st on st.dept_id = dp.dept_id;

select *
from students st
left join departments dp on st.dept_id = dp.dept_id;

select *
from departments dp
right join students st on st.dept_id = dp.dept_id;

select *
from students st
right join departments dp on st.dept_id = dp.dept_id;

select s.student_name, d.dept_name
from students s
cross join departments d;



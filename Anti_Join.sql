-- anti join 
SELECT * from products p where not exists (
    select 1 
    from order_items oi 
    where oi.product_id = p.product_id
    ) order by 1;
    
select * from product_categories;
select * from products;

select p.product_name,
 
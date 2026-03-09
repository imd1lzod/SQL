--select * from payment p inner join orders o on p.order_id = o.order_id;

--select * FROM shipments s inner join orders o on s.order_id = o.order_id;

--select c.first_name, r.* from reviews r inner join customers c on r.customer_id = c.customer_id;


--select p.product_name, r.* from reviews r left join products p on r.product_id = p.product_id;

--select c.first_name, r.* from reviews r right join customers c on r.customer_id = c.customer_id;

--select c.first_name, r.* from customers c left join reviews r on c.customer_id = r.customer_id;

--select p.*, s.contact_name from products p left join suppliers s on p.supplier_id = s.supplier_id;


--select * from products p full join order_items oi on p.product_id = oi.product_id; 

--select * from shipments s join suppliers s2 on s.order_id = s2.supplier_id; -- there is no carrier table here


--select * from orders cross join products;

--select * from customers cross join suppliers;

--select * from shipments cross join suppliers;


--select * from products p join products p2 on p.price = p2.price;

select * from customers c1 join customers c2 on SUBSTR(c1.phone_number, 5) = SUBSTR(c2.phone_number, 5);
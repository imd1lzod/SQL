select * from employees where salary = (select MAX(salary) from employees)

select * from employees where salary > (select AVG(salary) from employees)

select * from products where price = (select MAX(price) from products)

select MAX(order_date) from orders



select * from employees where department_id in (select id from departments where department_name = 'IT')

select * from customers where customer_id in (select customer_id from orders where total_amount >= 1);

select products.*, reviews.rating from products left  join reviews on products.product_id = reviews.product_id  where products.product_id in (select product_id  from reviews where rating = 5)

select * from products where product_id in (select product_id from reviews)


select * from customers c where EXISTS (select True from orders o where c.customer_id = o.customer_id)

select * from customers c where NOT EXISTS (select True from orders o where c.customer_id = o.customer_id)

select * from departments d where EXISTS (SELECT 1 from employees e where d.id = e.department_id)



select e.first_name, e.salary, e.department_id  from employees e where salary in (select MAX(salary) from employees e2 where e.department_id  = e2.department_id)

--select p.*, r3.rating from products p left join reviews r3 on p.product_id = r3.product_id  where p.product_id in (select r.product_id from reviews r where 4 > (select AVG(r2.rating) from reviews r2))

select distinct p.*  from products p left join reviews r2 on p.product_id = r2.product_id  where 4 < (select AVG(rating) from reviews r where p.product_id = r.product_id )

select c.customer_name, o.total_amount from customers c left join orders o on c.customer_id = o.customer_id where o.total_amount in (select MAX(o2.total_amount) from orders o2 where c.customer_id = o2.customer_id )

select * from employees e left join departments d on e.department_id = d.id where e.salary in (select MIN(e2.salary) from employees e2 where e2.department_id = d.id )

select * from employees e left join departments d on e.department_id = d.id
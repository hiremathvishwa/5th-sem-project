
# sales query
select s.sales_id,concat(e.emp_fname," ",e.emp_lname) as Employee_Name,p.product_name,concat(c.first_name," ",c.last_name) as Customer_name,s.bill_id,s.quantity,s.total_amount,s.sales_date
from sales s
join employee e
on s.emp_id = e.emp_id
join product p
on s.product_id = p.productid
join customer c
on s.customer_id = c.customer_id
where s.sales_date 
between %s and %s 
order by s.sales_date;

#product query
select p.productid,p.product_name,c.category_name,p.price,p.stock
from product p
join category c
on p.category_id=c.category_id
where p.price 
between %s and %s 
and p.stock between %s and %s;

# employee query
select e.emp_id,concat(e.emp_fname,e.emp_lname) as Employee_name,e.dob,e.phone,e.address,e.salary,j.job_title
from employee e
join job j
on e.job_id=j.job_id;


select concat(e.emp_fname,e.emp_lname) as employee_name,u.username,u.password
from employee e
join user u
on u.emp_id=e.emp_id;

select p.product_name,s.supplier_name
from product p
join product_supplier ps
on p.productid=ps.product_id
join supplier s
on ps.supplier_id=s.supplier_id;

select c.customer_id, concat(c.first_name, " ", c.last_name), c.dob, c.gender,c.phone_no, c.points
from customer c;

update sales s, product p set s.total_amount = s.quantity * p.price where s.product_id='2p2';

update sales set total_amount=null;

update sales s set s.total_amount = s.quantity*(select p.price from product p where s.product_id=p.productid);
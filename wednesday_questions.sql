-- 1 --
select customer_id, first_name, last_name from customer
full join address
on customer.address_id = address.address_id
where district = 'Texas';


-- 2 --
select first_name, last_name from customer
right join payment
on customer.customer_id = payment.customer_id
where amount > 6.99;


-- 3 --
select * from customer where customer_id in(
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 175
	order by sum(amount) desc
);


-- 4 -- No Nepal listed
select * from customer where address_id in(
	select address_id from address where city_id in(
	select city_id from city_ where city = 'Nepal'));
	

-- 5 --
select staff_id, count(*) as staff_count from payment group by staff_id;


-- 6 --
select rating, count(*) as rating_tally from film group by rating;


-- 7 -- 
select * from customer where customer_id in(
	select customer_id
	from payment where amount > 6.99);


-- 8 --
select amount, count(amount) from payment where amount = 0 group by amount;


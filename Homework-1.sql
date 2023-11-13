-- Question 1
select count(last_name) 
from actor 
where last_name = 'Wahlberg'

-- Question 2
select count(payment_id)
from payment
where amount between 3.99 and 5.00

--Question 3
select inventory.film_id, count(inventory.film_id), film.title
from inventory
full join film
on film.film_id = inventory.film_id
group by film.title, inventory.film_id 
order by count(inventory.film_id) desc

-- Question 4
select last_name, count(last_name)
from customer
where last_name = 'Williams'
group by last_name

-- Question 5
select rental.staff_id, staff.first_name, staff.last_name, count(rental.staff_id)
from rental
full join staff
on rental.staff_id = staff.staff_id
group by rental.staff_id, staff.first_name, staff.last_name 
order by count(rental.staff_id) desc

-- Question 6
select count(distinct district)
from address

-- Question 7
select count(actor_id), film_actor.film_id, film.title
from film_actor
inner join film
on film_actor.film_id = film.film_id 
group by film_actor.film_id, film.title
order by count(actor_id) desc limit 1

-- Question 8
select customer.first_name, customer.last_name, store_id 
from customer
where (customer.last_name like '%es' and store_id = 1)

-- Question 9
select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount)>250
order by count(amount) desc

-- Question 10
select rating, count(rating) cr
from film f
group by rating 
order by cr desc

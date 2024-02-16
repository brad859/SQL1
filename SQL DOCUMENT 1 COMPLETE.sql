-- QUESTION NUMBER 1 OF HOMEWORK "How many actors are there with the last name ‘Wahlberg’?"
select * 
from ACTOR
select FIRST_NAME, last_name
from actor
where last_name = 'Wahlberg';
-- ANSWER IS 2

-- QUESTION NUMBER 2 OF HOMEWORK "How many payments were made between $3.99 and $5.99?"
select * 
from payment
select customer_id, amount 
from payment 
where amount between 3.99 and 5.99;
-- ANSWER IS 2 

-- QUESTION NUMBER 3 OF HOMEWORK "What film does the store have the most of? (search in inventory)"
select * 
from inventory 
SELECT film_id, COUNT(film_id)
FROM Inventory 
GROUP BY film_id 
ORDER BY count desc;
-- THERE ARE MANY WITH 8, NOT A PARTICULAR 1

-- QUESTION NUMBER 4 OF HOMEWORK "How many customers have the last name ‘William’?"
select * 
from customer  
select FIRST_NAME, last_name
from customer 
where last_name = 'William';
-- THE ANSWER IS ZERO 

-- QUESTION NUMBER 5 OF HOMEWORK "What store employee (get the id) sold the most rentals?"
select *
from rental r  
SELECT staff_id, COUNT(staff_id)
FROM rental r 
GROUP BY staff_id 
ORDER BY staff_id;
-- THE ANSWER IS EMPLOYEE 1 WITH 8040 SALES

-- QUESTION NUMBER 6 OF HOMEWORK "How many different district names are there?"
select * 
from address 
SELECT district, COUNT(district)
FROM address  
GROUP BY district 
ORDER BY district ;
-- THE ANSWER IS 378 DISTRICTS

-- QUESTION NUMBER 7 OF HOMEWORK "What film has the most actors in it? (use film_actor table and get film_id)"
select *
from film_actor 
select film_id, count(film_id)
from film_actor 
group by film_id 
order by film_id ;
-- THE ANSWER IS FILM 508 WITH A COUNT OF 15  

-- QUESTION NUMBER 8 OF HOMEWORK "From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)"
select *
from customer 
select first_name, last_name 
from customer 
where last_name like '%es';
-- THE ANSWER IS 21 PEOPLE

-- QUESTION NUMBER 9 OF HOMEWORK "How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)"
select *
from payment 
select COUNT(customer_id) 
from payment 
where amount between 380 and 430
group by customer_id 
having COUNT(rental_id) > 250;
-- COULD NOT FIND SOLUTION TO PROBLEM, SHOUD BE 3 HAVE AN ANSWER OF ZERO 

-- QUESTION NUMBER 10 OF HOMEWORK "Within the film table, how many rating categories are there? And what rating has the most
-- movies total?"
select *
from film 
select rating  , count(rating)
from film
group by rating  
order by rating  ;
-- PG HAS THE MOST RATINGS WITH 224




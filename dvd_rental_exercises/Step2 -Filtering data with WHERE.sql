/* Task 1: Find R-rated films
A customer wants to search through all the films with an 'R' rating.
Write a query which returns the title and description of films with the 'R' rating from the film table.*/

select title, description from film
where rating = 'R'

/* Task 2: Find films longer than 120 minutes
You are keen to discover which films are truly epic.
Write a query which returns the title and length of films more than 120 minutes long from the film table.*/

select title, length from film
where length >= 120


/* Task 3: Find films rented after a certain date
You are looking for films rented after a certain date.
Write a query which returns the rental_id and the rental_date of all the films rented after 1/1/2006 from the rental table.*/

select rental_id, rental_date from rental
where rental_date >= '2006-01-01'



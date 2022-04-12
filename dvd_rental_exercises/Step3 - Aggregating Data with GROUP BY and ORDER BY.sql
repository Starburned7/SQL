--Task 1: Find out how many actors share the same first name

select count(actor_id), first_name from actor
group by first_name

--Task 2: Order the results alphabetically.

select count(actor_id), first_name from actor
group by first_name
order by first_name


--Task 3: Find the most common first name for actors

select count(actor_id), first_name from actor
group by first_name
order by first_name desc

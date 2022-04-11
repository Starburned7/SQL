# Working with Temporal Functions and NULL

/*Task 1: Write a query that adds to a date value.
Write a query which adds 7 days to rental_date from the rental table (the date a video would be due if the rental period was seven days).
Return rental_id and rental_date (plus 7 days).*/

select rental_id, date_add(rental_date, interval 7 day) from rental;

/*Task 2: Write a query to see how long a rental was out for
Write a query which uses the rental_date and rental_return fields in the rental table, to see how long each rental was out for.
Return the rental_id and the difference in time between return_date and rental_date, labeled as rental_days_out.
You will need to use a special date function to achieve the desired result.*/

select rental_id, datediff(return_date, rental_date) as rental_days_out from rental;

/*Task 3: Write a query that filters for a value that is not NULL
Write a query on the address table that checks whether or not the address2 field is null.

Return three fields: address, address2, and whether or not address2 is null.*/

select address, address2,
case
when address2 is null then 0 else 1 end as null_check from address;
-- OR
select address, address2,
address2 is not null from address

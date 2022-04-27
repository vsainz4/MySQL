# Select rating, rental_duration, and replacement_cost from the film table
SELECT rating, 
rental_duration,
replacement_cost 
FROM film;

#what is the total replacement_cost?
SELECT sum(replacement_cost) FROM film;

#sum the replacement_cost grouped by rating
Select rating,
sum(replacement_cost)
from film
group by rating;

#example 1 of how to create a table with a total colum
SELECT rating,
	SUM(replacement_cost)
FROM film 
GROUP BY rating 
UNION ALL SELECT NULL, 
SUM(replacement_cost) 
from film;


#example 2 using rollup (extension of the group by clause)
SELECT rating,
	SUM(replacement_cost)
FROM film 
GROUP BY rating WITH ROLLUP;

#check whether null is actually the subtotal/ total rows
/* 
SELECT rating,
	rental_duration,
	SUM(replacement_cost)
FROM film 
GROUP BY rating, rental_duration WITH ROLLUP;
 */

SELECT rating,
	rental_duration,
	SUM(replacement_cost),
    GROUPING(rating),
    grouping(rental_duration)
FROM film 
GROUP BY rating, rental_duration WITH ROLLUP;

#relabel the nulls
SELECT IF(GROUPING(rating), 'All Ratings', rating),
		IF(GROUPING(rental_duration), ' ALL RD Total', rental_duration),
		sum(replacement_cost)
from film
group by rating, rental_duration WITH ROLLUP;
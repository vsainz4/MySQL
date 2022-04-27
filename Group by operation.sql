#SELECT rating FROM film ;
SELECT rating FROM film GROUP BY rating;

#select multiple columns
#SELECT rating, rental_duration FROM film;
SELECT rating, rental_duration FROM film
GROUP BY rating, rental_duration;



#SELECT * FROM film;
SELECT SUM(replacement_cost) 
from film;



SELECT rating, SUM(replacement_cost) from film
group by rating;


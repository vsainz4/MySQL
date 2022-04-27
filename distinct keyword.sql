#what are the different ratings that are assigned to film;
SELECT DISTINCT rating FROM film;


# what are the different rental rates that are applied to films
SELECT DISTINCT rental_rate FROM film;

# are there films within each rating at each price level
		#SELECT rating, rental_rate FROM film; (all ratings)
SELECT DISTINCT rating, rental_rate FROM film;
SELECT film_id,
	title,
	rental_duration,
	rental_rate,
	length,
	replacement_cost,
	rental_duration + 2 as `Longer Rental duration`, 			# add 2 days to each rental duration and change column name to "Longer Rental Duration"
    replacement_cost - 2.99 as `replacement cost discount`,		#subtract 2.99 from each replacement and change column name to "replacements cost discount"
    rental_rate * 2 as `new rental rate`, 	#souble the rental rate and change the column name to "new rental rate"
    rental_rate / rental_duration as `cost per day`,			#divide rental_rate by rental_duration and change the column name to "cost per day"
    length div 30 as `full sitting`,	# divide length by 30 and change column name to "full sittings"
    length % 30 as `Modulus`,				#calculate length modulo 30 and change column name to "final sitting"
    'FILM TABLE' as `Table Name`
from film;
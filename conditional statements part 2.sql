/* Add a column called 'new_rental rate' which
1. adds 0.01 to the current rental rate for PG rated films only
2. doubles the rental rate for G rated films only
3. keeps the same rental rate for all other film ratings */

SELECT film_id,
	title, 
    rating,
    rental_rate,
    (CASE	
		WHEN rating = 'PG' THEN rental_rate + 0.01
        WHEN rating = 'G' THEN rental_rate * 2
        ELSE rental_rate
	END) AS `new_rental_rate`
From film;
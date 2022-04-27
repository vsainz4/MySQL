/* Add a column called 'new_rental rate' based on the following criteria:
1. adds 0.01 to the current rental rate for PG rated films that have a rental duration greater than or equal to 6
2. divides the rental rate by 2 for nc-17 rate films or those films with rental duration of 3 days
3. doubles the rental rate for films with rating of G or PG-13 or rental duration of 4 or 5 days
4.keeps the same rental rate for all other films
*/

SELECT film_id,
	title, 
    rating,
    rental_duration,
    rental_rate,
		(CASE	
		WHEN rating = 'PG' AND rental_duration >= 6 THEN rental_rate + 0.01
        WHEN rating = 'NC-17' OR rental_duration = 3 THEN rental_rate / 2
        WHEN rating IN ('G', 'PG-13') OR rental_duration IN (4,5) THEN rental_rate * 2
        ELSE rental_rate
	END) AS `new_rental_rate`
From film;

#THIS WILL ROUNT TO 2 DECIMALS
SELECT film_id,
	title, 
    rating,
    rental_duration,
    rental_rate,
		FORMAT((CASE	
		WHEN rating = 'PG' AND rental_duration >= 6 THEN rental_rate + 0.01
        WHEN rating = 'NC-17' OR rental_duration = 3 THEN rental_rate / 2
        WHEN rating IN ('G', 'PG-13') OR rental_duration IN (4,5) THEN rental_rate * 2
        ELSE rental_rate
	END),2) AS `new_rental_rate`
From film;
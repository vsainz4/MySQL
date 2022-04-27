/* Add a column called 'Length Category" stating
1. 'Too Long' for films longer or equal to 3 hours
2. 'Long' for films greater than or equal to 2 but less than 3 hours
3. 'Ok' for films greater than or equal to 1.5 but less than 2 hours
4. 'Short' for films less than 1.5 hours */

SELECT film_id,
	title, 
    length,
    (CASE	
		WHEN length >= 180 THEN 'Too Long'
        WHEN length >= 120 THEN 'Long'
        WHEN length >= 90 THEN 'OK'
        ELSE 'Short'
	END) AS `Length Category`
From film
ORDER BY length DESC;
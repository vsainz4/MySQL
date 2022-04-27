SELECT customer_id,
		rental_id,
		inventory_id,
		rental_date,
        time(rental_date) ,  	 #gives jsut the time value ex 10:35:23
        hour(rental_date), 		 #gives the time ex 10
        minute(rental_date),  	 #gives the minute
        second(rental_date), 	#gives the second
        extract(hour from rental_date)		#can change the hour to minute to second. Can also change the minute_second
FROM rental
WHERE customer_id = 1
AND staff_id = 1;
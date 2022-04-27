SELECT customer_id,
		rental_id,
        inventory_id,
        rental_date,
        DATE(rental_date), #give just the date in year, month, day
        year(rental_date), 	#gives just the year ex 2005
        month(rental_date), #gives the month in number form
        monthname(rental_date), #gives the month by name ex january
        dayofmonth(rental_date), #gives the day of the month as a number
        day(rental_date), 		#also gives the day of the month as a number ex 28
        weekday(rental_date), 	#gives the weekday number from 0-6 can add one to make it 1-7
        dayname(rental_date),	#gives the weekday name ex monday
        dayofweek(rental_date),	#gives the weekday number from 1-7 without adding one
        dayofyear(rental_date), #gives the day of the year ex 148 out of 365 days
        extract(day from rental_date) #gives the day of month ex 28
										#you can change day to day to month or hour from the extract one
FROM rental
WHERE customer_id = 1
AND staff_id = 1;
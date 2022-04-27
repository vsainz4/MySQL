#select all rentals that were returned on '2005-05-26 22:04:30'
SELECT * FROM rental
WHERE return_date= '2005-05-26 22:04:30';



#select all rentals that were returned on the '26th math 2005' use any format
SELECT * FROM rental
WHERE DATE(return_date) = '2005-05-26 ';



#select all rentals that were returned on '05/26/2005 at 22:04' (%m/%d/%Y %H:%i)
SELECT * FROM rental
WHERE DATE_FORMAT(return_date, '%m/%d/%Y %H:%i') = '05/26/2005 22:04';

#select all rentals that were returned at 04:11:42 on any date

SELECT * FROM rental
WHERE TIME(return_date) = '04:11:42';


#select all rentals that were returned on betwen the 26th and 28th May
SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-26' AND '2005-05-28';    #THIS DID NOT RETURN MAY 28TH BECAUSE OF TIMING



#select all rentals that were returned between 4AM and 7AM on the 26th May
SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-26 04:00:00' AND '2005-05-28 07:00:00';


#select all rentals that were returned more than 9 days after their rental date
SELECT * FROM rental
WHERE return_date > DATE_ADD(rental_date, INTERVAL 9 DAY);


#select all rentals that were returned between 6 or 8 days (inclusive) after their rental
SELECT * FROM rental
WHERE return_date BETWEEN DATE_ADD(rental_date, INTERVAL 6 DAY) AND DATE_ADD(rental_date, INTERVAL 8 DAY);

#or do the following
SELECT * ,
	DATEDIFF(return_date, rental_date)
FROM rental
WHERE return_date BETWEEN DATE_ADD(rental_date, INTERVAL 6 DAY) AND DATE_ADD(rental_date, INTERVAL 8 DAY);
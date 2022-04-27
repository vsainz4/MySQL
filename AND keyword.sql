# how many films have a rating of G?alter
SELECT * FROM film WHERE rating='G';

# how many films have a rating of G with trailers as their only feature?
SELECT * FROM film WHERE rating='G' AND special_features ='Trailers';

# how many of the films identified in the previous example cost 2.99 to rent?
SELECT * FROM film WHERE rating='G' AND special_features ='Trailers' AND rental_rate=2.99;

#how many of the films identied in their previous example have a rental_durion of greater thatn 3 days?
SELECT * FROM film WHERE rating='G' AND special_features ='Trailers' AND rental_rate = 2.99 
AND rental_duration >3;
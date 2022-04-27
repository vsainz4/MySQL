#what is the average rental rate accross all films in the film dataset
select 
avg(rental_rate)
 from film;

# is the average rental rate for pg rate films higher or lower than the overall average?
select avg(rental_rate)from film
where rating='PG'; #3.05

# what is the lowest average replacements cost for each rating
select rating,
avg(replacement_cost) as `RC`
from film
group by rating
order by `RC` ASC;
 
# what is the average length of film for each combination of rating and rental duration
select rating,
rental_duration,
avg(length) as `Average length of film`
from film
group by rating, rental_duration
order by 3 desc;   #3 is the average length of film

# prove that the average function disregards NULL values

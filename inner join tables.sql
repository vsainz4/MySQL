# bring ball all information from the rental table that relates to mary smith
select * from customer;
select * from rental 
where customer_id = 1;

select *
from 
customer as cus
inner join
rental as ren
on cus.customer_id = ren.customer_id
where cus.customer_id=1; 				#mary smith is customer 1




#extend the above query to join the inventory table and bring back all information from each table for mary smith
select *
from 
customer as cus
inner join						#inner join on the rental table
rental as ren 								
on cus.customer_id = ren.customer_id
inner join						#inner join on the inventory table
inventory as inv
on ren.inventory_id = inv.inventory_id
where cus.customer_id=1; 				#mary smith is customer 1


#obtain the unique film id's that mary smith has rented
select distinct(inv.film_id) as `Distinct filmd ids` 		
from customer as cus
inner join						#inner join on the rental table
rental as ren on cus.customer_id = ren.customer_id
inner join						#inner join on the inventory table
inventory as inv on ren.inventory_id = inv.inventory_id
where cus.customer_id=1; 				#mary smith is customer 1


#how many rentals are within each rating for mary smith
select rating,
			count(rating)
from customer as cus
inner join						#inner join on the rental table
rental as ren on cus.customer_id = ren.customer_id
inner join						#inner join on the inventory table
inventory as inv on ren.inventory_id = inv.inventory_id
inner join 						#inner join the film table
film as fil on inv.film_id = fil.film_id
where cus.customer_id=1
group by fil.rating; 				

#assuming mary returned the film on time as per the rental duration, how much would she have spent on all the films she rented
select sum(rental_rate) as `cost`
from customer as cus
inner join						#inner join on the rental table
rental as ren on cus.customer_id = ren.customer_id
inner join						#inner join on the inventory table
inventory as inv on ren.inventory_id = inv.inventory_id
inner join 						#inner join the film table
film as fil on inv.film_id = fil.film_id
where cus.customer_id=1; 	
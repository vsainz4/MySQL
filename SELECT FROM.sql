# select all data within customers table
SELECT * FROM customer;

#select all data within the stores table
SELECT * From store;

# select all data within the films table
SELECT * FROM film;

#select all customers names and their respective customer id (3 columns only)
SELECT customer_id,
first_name,
last_name
FROM customer;

# Select all actors names and their respective actor (3 columns only)
SELECT actor_id,
first_name,
last_name
FROM actor;

#select all data within customers tabler (specifying schema)
SELECT * FROM sakila.customer;
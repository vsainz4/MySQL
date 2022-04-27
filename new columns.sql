/* Add the following colum titles to the result below, each containing value:
Addition, subtracting, multiplication, division, modulus, table name */
SELECT film_id,
	title,
	rental_duration,
	rental_rate,
	length,
	replacement_cost,
	NULL as `Addition`,
    NULL  as `Subtraction`,
    NULL as `Multiplication`,
    NULL as `Division`,
    NULL as `Integer Division`,
    NULL  as `Modulus`,
    NULL  as `Table Name`
from film;


# change the NULL values of each column to the respective arithmetic operator in string form. Populate the table name column with 'FILM TABLE'
SELECT film_id,
	title,
	rental_duration,
	rental_rate,
	length,
	replacement_cost,
	'+' as `Addition`,
    '-' as `Subtraction`,
    '*' as `Multiplication`,
    '/' as `Division`,
    'DIV' as `Integer Division`,
    '%' as `Modulus`,
    'FILM TABLE' as `Table Name`
from film;

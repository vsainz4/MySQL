# change the column hears so that the column names are capetilized acronyms
SELECT title as Title,
 rental_rate as RentalRate,
 rental_duration as RentalDuration,
 replacement_cost as ReplacementCost
 FROM film;

# change the column headers to remove the undercore in the colum name
SELECT title as Title,
rental_rate as `Rental Rate`,
 rental_duration as `Rental Duration`,
 replacement_cost as `Replacement Cost`
 FROM film;

# using the query aboce, change the table name to be the letter 'f'
SELECT title as Title,
rental_rate as `Rental Rate`,
 rental_duration as `Rental Duration`,
 replacement_cost as `Replacement Cost`
 FROM film AS `F`;         #We cannot see the table name yet
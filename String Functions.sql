SELECT * FROM customer;


#This will combine first and last names together with a space in between
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`
FROM customer;

#this will make the names lower case
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`
FROM customer;

#in string functions
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`,
    INSTR(first_name, 'a')
FROM customer;

#length how long a function is
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`,
    INSTR(first_name, 'a'),
    length(last_name)
FROM customer;

#how many characters I want on the left of the string
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`,
    INSTR(first_name, 'a'),
    length(last_name),
    LEFT(first_name, 3)
FROM customer;

#how many characters I want on the right of the string
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`,
    INSTR(first_name, 'a'),
    length(last_name),
    LEFT(first_name, 3),
    RIGHT(last_name, 2)
FROM customer;

#replace
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`,
    INSTR(first_name, 'a'),
    length(last_name),
    LEFT(first_name, 3),
    RIGHT(last_name, 2),
    REPLACE(first_name, 'AR', 'AARR')
FROM customer;

#subtring starts on 2nd letter and uses 3 after
SELECT first_name, 
	last_name,
	CONCAT(first_name, ' ' , last_name) AS `full name`,
    LOWER(CONCAT(first_name, ' ' , last_name)) AS `full name lower`,
    INSTR(first_name, 'a'),
    length(last_name),
    LEFT(first_name, 3),
    RIGHT(last_name, 2),
    REPLACE(first_name, 'AR', 'AARR'),
    SUBSTRING(last_name, 2, 3)
FROM customer;

#look up the following
#subtring_index
#LTRIM REMOVES WHITESPACE FROM THE LEFT
#RTRIM REMOVES WHITESPACE FROM THE RIGHT
#TRIM HAS 3 KEYWORDS
#LEADING WILL REMOVE FROM THE START
#TRAILING WILL REMOVE FROM THE END
#BOTH WILL REMOVE FROM THE START AND END
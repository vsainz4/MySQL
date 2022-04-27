# Select all information from country table within the worl schema
SELECT * FROM country;

# How many countries have a NULL life expectancy?
SELECT * FROM country 
WHERE LifeExpectancy IS NULL;

# How many countries are regarded as independent?
SELECT * FROM country WHERE IndepYear is NOT NULL;

/* obtain the country name and head of state columns only for andorra, antartica, and austrlian
. do any of these countries bring back null values? */
SELECT Name, HeadOfState FROM country
WHERE Name in ('Andorra', 'Antartica', 'Australia');

Select * From country
where HeadOfState is null;

Select * From country 
where HeadOfState = ' ';
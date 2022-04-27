# Using the world schema, determine how many cities reside in District Limburg
SELECT * FROM city
WHERE District = 'limburg';

#another area of interest in addtion to limbur are the cities that are called birmingham
SELECT * FROM city
WHERE District = 'limburg' or name='Birmingham';

#following on from the previous example, city ID 500 should also feed the result set
SELECT * FROM city
WHERE District = 'limburg' or name='Birmingham' or id=500;

#in addition to the aboce, we now want to bring back all cities that have a population less than 600
SELECT * FROM city
WHERE District = 'limburg' or name='Birmingham' or id= 500
or population < 600;
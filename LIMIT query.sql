#select the first 10 records from the country table
SELECT * FROM country LIMIT 10;


#select rows 6 to 10 from country table
SELECT * FROM country LIMIT 5, 5;


#what are the top 5 countries with the hightest population
SELECT * FROM country ORDER BY population DESC
LIMIT 5; 
# for above i have to order the population first and then limit 


#what ocuntry has the hightest life expencancy?
SELECT * FROM cou0ntry ORDER by LifeExpectancy DESC 
limit 5, 1;
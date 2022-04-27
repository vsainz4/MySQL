# select all data from the country table
SELECT * FROM country;

#count the records in the dataset
SELECT count(*) as `count` FROM country;
# SELECT count(code) as `count` FROM country;    (this is another way to write the code)


#count the records in the dataset that reside in the continent europe
SELECT count(name) as `europe count` FROM country
where continent = 'europe' ;


#prove that the count function disregards null values
SELECT * FROM country
WHERE LifeExpectancy IS NOT NULL;

SELECT COUNT(LifeExpectancy) `count of LE` FROM COUNTRY;

#how many continents are there?
SELECT COUNT( DISTINCT continent) `count of continent` FROM COUNTRY; #this gives is 7 continents not 239 without the distinct


#how many countries reside on each continent? order the count from highest to lowest
SELECT Continent, 
		COUNT(name) as `country count`
from country
group by Continent
order by `country count` desc;
        


#using the previous query, add a second count on the liefe expectancy to see what continents are missing values
SELECT Continent, 
		COUNT(name) as `country count`,
		COUNT(LifeExpectancy) as `LE count`
from country
group by Continent
order by `country count` desc;

#do NOT FORGET YOUR COMMAS BETWEEN THE COUNTS!!!
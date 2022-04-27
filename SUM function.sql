# what is the total GNP for the entire country dataset (gross national product)
SELECT SUM(GNP) as `TOTAL GNP` FROM COUNTRY;



/* what is the population of each Region? Show the continent each region resides in.
Order the result by population size (highest first) */
SELECT Continent,
	   Region,
	SUM(population) as `population`
From country
group by continent, region
order by `population` desc;


#using the query above, filter the results to show the continents Europe and Africa only
SELECT Continent,
	   Region,
	SUM(population) as `population`
From country
where continent in ('Europe', 'Africa')
group by continent, region
order by `population` desc;
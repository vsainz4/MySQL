/* Grouping by region, create a table that shows:
1. The count of countries in each region (call the column Country count)
2. The sum all all population within each region (call the column Population)
3. The average life expectancy for each regio (call the column average LE)
4. The highest life expetancy within each region (call the column max LE)
5. The lowest life expetancy within each region (call the column min LE)
Sort the result set by polulation size (highest to lowest) */

SELECT Region,
COUNT(Name) as `Country Count`,
SUM(population) as `Population`,
AVG(LifeExpectancy) As `Average LE`,
Max(LifeExpectancy)  As `Max LE`,
Min(LifeExpeCtancy) As `Min LE`
 FROM country
 GROUP BY Region
 ORDER BY `Population` DESC;



#using the above query, filter the table for population that are less than 50 million
SELECT Region,
COUNT(Name) as `Country Count`,
SUM(population) as `Population`,
AVG(LifeExpectancy) As `Average LE`,
Max(LifeExpectancy)  As `Max LE`,
Min(LifeExpeCtancy) As `Min LE`
 FROM country
 GROUP BY Region
 HAVING `Population` < 50000000 #having has to be between group and order
 ORDER BY `Population` DESC;


# using the query abore, add a second filter to show regions that also have an average life expectancy greater than 70
SELECT Region,
COUNT(Name) as `Country Count`,
SUM(population) as `Population`,
AVG(LifeExpectancy) As `Average LE`,
Max(LifeExpectancy)  As `Max LE`,
Min(LifeExpeCtancy) As `Min LE`
 FROM country
 GROUP BY Region
 HAVING `Population` < 50000000  AND `Average LE` > 70  #add the AND keyword for the second constraint
 ORDER BY `Population` DESC;
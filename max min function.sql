#what is the highest life expectancy of any country in the country database?
SELECT Max(lifeExpectancy) As `Max LE`
FROM country;


# what is the lowest life expectanty of any country in the country dataset?
SELECT min(lifeExpectancy) As `Min LE`
FROM country;


# what is the highest life expectanty of any country in the country dataset?
SELECT Region,
Max(lifeExpectancy) As `Highest LE`
FROM country
group by region
order by `Highest LE` DESC;


# what is the lowest life expectanty of any countient within each continent dataset?
SELECT Continent,
Min(lifeExpectancy) As `Lowest LE`
FROM country
group by continent
order by `Lowest LE` DESC;


#bonus: using the above query, if a result is null, replace null with 30
SELECT Continent,
coalesce(Min(lifeExpectancy),30) As `Lowest LE`
FROM country
group by continent
order by `Lowest LE` DESC;
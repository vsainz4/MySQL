#window function examples

/* window_function (expression) OVER (
partition_definition
order_definition
frame_definition) */

SELECT * FROM country;

SELECT name, 
		continent,
        LifeExpectancy,
              RANK() OVER (ORDER BY LifeExpectancy DESC) LE_Rank, 
		DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) LE_Dense_Rank,
        PERCENT_RANK() OVER (PARTITION BY Continent
							ORDER BY LifeExpectancy) LE_Percentage_rank,
		ROW_NUMBER() OVER (ORDER BY LifeExpectancy DESC) Row_num,
        FIRST_VALUE (LifeExpectancy) OVER(PARTITION BY continent
										ORDER BY LifeExpectancy DESC) first_val,
		LAST_VALUE (Name) OVER(PARTITION BY continent
							ORDER BY LifeExpectancy DESC
                            RANGE BETWEEN
									UNBOUNDED PRECEDING AND
                                    UNBOUNDED FOLLOWING) LAST_val
From country
ORDER BY  continent, LifeExpectancy DESC;



#MORE WINDOWN FUNCTIONS ON RESOURCES DOCUMENTS

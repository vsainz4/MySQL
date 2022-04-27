SELECT * from country;

SELECT GNP,
		GNPOld,
        GREATEST(GNP, GNPOld) AS `Highest`,  	
        LEAST(GNP, GNPOld) AS `Least`,
        COALESCE(GNPold, 100),
        ISNULL(GNPOld) 					#rememeber 1 is true 0 is false
FROM country;


        
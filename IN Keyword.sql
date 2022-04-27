#obtain all information per to city ID's 100, 200, 300, 400, 500
SELECT * FROM city where ID IN (100, 200, 300, 400, 500);


#obtain all information perpetiaining cities called london, manchester, or new york
SELECT * FROM city where Name IN ('London','Manchester','New York');

#how many cities are called london or manchester
SELECT * FROM city WHERE Name='London' or Name='Manchester';

#how many cities are called london or manchester and have a population less than  400,000
			#SELECT * FROM city WHERE Name='London' or Name='Manchester' AND Population < 400000; 
					# the above gives the wrong pupulatioin
SELECT * FROM city WHERE (Name='London' or Name='Manchester') AND Population < 400000;


 #Select all records from country apart from Aruba (exclude Aruba)
	#SELECT * FROM country;
 SELECT * FROM country where NOT name= 'Aruba';
 
  
  # Get countries whose names do NOT start with the letter A
  SELECT * FROM country where Name NOT like 'A%';
  
  #Select all information pertaining to countries that have a surface area less than 10 or more than 10 million
  SELECT * FROM country where SurfaceArea NOT between 10 AND 100000000;
  
  #select all information for countries that reside outside of europe and africa
  SELECT * FROM country where Continent NOT IN ('Europe', 'Africa');
  
  #select all countries that have a life expentancy populated 
  SELECT * FROM country where LifeExpectancy is NOT NULL;
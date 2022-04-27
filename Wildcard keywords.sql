#Filtering Name by just the letter like A
SELECT * FROM country WHERE Name like 'a%';

#Filtering Name by just the letter like B
SELECT * FROM country WHERE Name like 'B%';

# like spaces will search for words with those spaces
SELECT * FROM country WHERE Name LIKE '____'; # this is 4 spaces cuba, guam, etc are only 4 letters

# like spaces will search for words with those spaces
SELECT * FROM country WHERE Name LIKE '______'; # this is 4 spaces cuba, guam, etc are only 6 letters

# Use LIKE with letters in between the spaces
SELECT * FROM country WHERE Name LIKE '_ra___'; # brazil and france have 6 spaces and ra as the 2nd/3rd 

#REGEXP
SELECT * FROM country WHERE Name REGEXP '^[A-C]' ORDER BY name asc;
#above gives only country names from A - C and listed in alphabetical order

# set up 2 tables for union examples (vertical table)

CREATE TABLE table1 (
	code1 INT,
    code2 INT
);

CREATE TABLE table2 LIKE table1;
INSERT INTO table1(code1, code2)
values 	(1, 1),
		(1, 2),
		(1, 3),
		(1, 4),
		(1, 5);
        
INSERT INTO table2(code1, code2)
values 	(1, 1),
		(2, 1),
		(3, 1),
		(4, 1),
		(5, 1);
        
select * from table1;
select * from table2;

#union operator


#union all operator

#same amount of columns and compatible datatypes (field headers take fist statement column names)

#order by code 2- must be places after the last select statement

#table identifiers 

#perform a row count validation using the film table from the sakila schema
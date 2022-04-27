Delimiter $$
CREATE PROCEDURE fizz_buzz_loop(
	in end_no int
)
BEGIN
	declare x int default 0;
    declare result varchar(255);
    
set result = ' ';

fizzbuzz_loop: loop
	set x = x + 1;
    if x > end_no then
		leave fizzbuzz_loop;
	End if;
    
    if (x % 3 = 0 AND x % 5 = 0) then
		set result = concat(result, 'FizzBuzz', ',');
	elseif x % 3 = 0 then
		set result = concat(result, 'Fizz', ',');
	elseif x % 5 = 0 then
		set result = concat(result, 'Buzz', ',');
	Else
		set result = concat(result, x, ',');
	end if;
end loop;
select result; 
end $$

delimiter ; 

call fizz_buzz_loop(20);

delimiter $$

create procedure fizz_buzz_repeat(
	in end_no int
    
)
begin	
	declare x int default 0;
    declare result varchar(255) default '';

fizzbuzz_repeat: REPEAT
	set x = x + 1;
    if (x % 3 = 0 and x % 5 = 0) then
		set result = concat (result, 'Fizzbuzz', ',');
	elseif (x % 3 = 0)  then
		set result = concat (result, 'Fizz', ',');
	elseif (x % 5 = 0)  then
		set result = concat (result, 'buzz', ',');
	else
		set result = concat (result, x, ',');
	end if;
    until x >= end_no
    end repeat fizzbuzz_repeat;
end $$

delimiter ; 

call fizz_buzz_repeat(15);

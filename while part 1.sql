create table output (
	id serial, 
    response varchar (20)
);

delimiter $$
create procedure fizz_buzz_while (
	in end_no int
)

Begin
	declare counter int default 1;
    truncate table output;
    while counter <= end_no
    do
    if (counter % 5 = 0 and counter % 3 = 0) then
		insert into output(response) values ('FizzBuzz');
	elseif  counter % 3 = 0 then
		insert into output(response) values ('Fizz');
	elseif  counter % 5 = 0 then
		insert into output(response) values ('Buzz');
	else 
		insert into output(response) values (counter);
	end if;
    set counter = counter + 1;
    end while;
end $$

delimiter ;

    

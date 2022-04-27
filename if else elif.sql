DELIMiTER $$
CREATE PROCEDURE FilmLengthClass(
	IN pFilm_id INT,
    OUT pFilmLength VARCHAR(30)
)
BEGIN
	declare vLength INT default 0;
SELECT length
into vLength
from film
where film_id = pFilm_id;

	if vLength > 120 then
		set pFilmLength = 'too long';
	elseif vLength <= 120 AND vLength >= 90 then
		set pFilmLength = 'OK';
	else
		set pFilmLength = 'too short';
	end if;
    
END $$

Delimiter ;

select * from film;
call FilmLengthClass(30, @indicator); 
select @indicator;
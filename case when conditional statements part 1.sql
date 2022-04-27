/*
delimiter $$
create procedure SpecialOffers(
	in pFilmID INT,
    out pOffer VARCHAR (20)
)
BEGIN
	DECLARE filmRating VARCHAR (10);
SELECT rating
into filmRating
From film
where film_id = pFilmID;
	
    case filmRating
		when 'PG' then 
			set pOffer = '2 for 1!';
		when 'R' then
			SET pOffer = '25% off';
		else 
			set pOffer = 'No offer';
end case;
end $$

delimiter ;

*/

call SpecialOffers (2, @Offer);
select @offer;
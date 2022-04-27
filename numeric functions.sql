SELECT * FROM payment;


SELECT payment_id,
		amount,
        amount * -1 as `negative amount`,
        ABS(amount * -1),						 #absolute value
        CEIL(amount),							#rounds to the nearest whole/integer number
        FLOOR(amount),							#rounds DOWN to the nearest integer/whole number
        ROUND(amount, 2),						#rounds to whatever decimal place. this ex is two decimal
        TRUNCATE(amount, 1), 					#does not round, just cuts decimal
        POW(payment_id,3),						#pow and power both work to give exponent
        SQRT(payment_id),						#square root
       ROUND(SQRT(payment_id),2),				#rounds the sqrt to 2 decimals
       PI()										#pi value
       from payment
       
       #look at the resources to look for more math functions
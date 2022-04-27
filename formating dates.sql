SELECT return_date,
		DATE_FORMAT(return_date, '%Y-%m-%d') as `%y-%m-%d`,					#format as yyyy-mm-dd #capital y matters here
        DATE_FORMAT(return_date,	'%e/%c/%Y') as	`%e/%c%Y`,				#format as d/m/yyyy
        DATE_FORMAT(return_date,	'%e/%c/%Y %H:%i') as`%e/%c/%Y %H:%i`, 							#format as d/m/yyyy hh:mm
        date_format(date_add(return_date, INTERVAL 5 MONTH), '%d-%b-%y') as `%d-%b-%y`,		#d-mon-yy #added 5 months to it
        DATE_FORMAT(DATE_SUB(return_date, INTERVAL 6 DAY),	'%M %e, %Y') as `%M %e, %Y`	,	#month d, yyy #subtracted 6 days to original
        DATE_FORMAT(ADDTIME(return_date, '2 03:10:03'),	 '%a %D %b %Y') as 	`%a %D %b %Y`,		#thus 8th apr 2021 #adds 2 days 3 hrs 10 mins and 3 seconds to return date
        DATE_FORMAT(SUBTIME(return_date, '03:10:03'),'%W %D % M %y %T') as	`%W %D % M %y %T` 		#thursday 8th april 2021 11:20:05 #subtracts 3 hrs 10 min 3 sec 
FROM rental;

#additional resources on time formarts are under his resources
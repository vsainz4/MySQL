select rental_date,
		return_date,
        now() as `date & time now`,
        date_add(now(), interval 5 day) as `date & time in future`,		 #added 5 days on to now date but time remained the same
        date_add(now(), interval 5 month) as `date & time in future month`,  #returns month 8 instead of 3
        date_sub(now(), interval 6 day) as `date & time in past day`, #subtract 6 days
        addtime(now(),'03:10:03') as `add time`,     #adds 3 hrs 10 min 3 sec to our time now
        addtime(now(),'2 03:10:03') as `add day and time`,     #adds 2 days 3 hrs 10 min 3 sec to our time now
        subtime(now(), '05:20:10') as `sub time`,     #subtracts 5 hrs 20 min 10 sec to our time now
		datediff(return_date, rental_date) as `date dif`, #difference in days between rental date and return date
        timediff(return_date, rental_date) as `date dif`, #difference in time between rental date and return date
        timediff(NOW(),rental_date) as 	`time now and rental dif`, #not able to return this
        timestampadd(day, 3, now()) as `ts add`,   #added 3 days to our time now. we can change day to month
        timestampdiff(year, now(), rental_date)	as `time dif`,	#finds the different between the year now and the rental date year. can also change year to day
		unix_timestamp(return_date) as `unix ts`, #represents the by number of seconds parsed
        sec_to_time(unix_timestamp(return_date) - unix_timestamp(rental_date)) as `unix ts`,  # difference in unixtime stamps
        period_add(202101, 11) as `period plus`,
        period_diff(202301, 1202001) as `period diff`,
        last_day(return_date) as `me`	#gives the last day of that month
        
        
        
from rental;
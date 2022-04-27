SELECT CURDATE(),  	#gives the current date
		current_date(),  #also gives the durrent date
        curtime(), 		#gives the current time
        current_time(), 	#also gives the current time()
        now(),				#gives date and time
        current_timestamp(), #also gives the date and time
        sysdate(),				#returns the time as to when the sysdate was excecuted
        sleep(5), 	#sleeps query for 5 seconds
        now(),		#will return the exact time when the query was first excecute
        sysdate()
FROM rental
limit 1; 
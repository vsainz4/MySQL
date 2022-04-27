#Alter the 'large_customer_payments' view so payments greater than 150 are considered large
		#do this by going to the view on the schema, right click on the view name, and click alter view to change the code
        
#select * from large_customer_payments;

#rename the "large customer_payments' view to 'big_cust_payments'
#rename table large_customer_payments
#to big_cust_payments;



# show all views withing the database to prove the view name has changed
show full tables where table_type = 'VIEW' ; #view must be capetilized for this to work

#drop the 'big_cust payments' view
drop view if exists big_cust_payments; 	#you can also right click and drop
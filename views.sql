/* create a view showing the sum of payments for each customer with customer_id, first name, 
last name, and payments as the colum names.
label the view customer_payments*/

/* Select *  from customer			#payment table does not have the names. so we include the customer table to get names
join payment
using (customer_id); 
*/

CREATE OR REPLACE VIEW customer_payments as
select customer.customer_id,
		customer.first_name,
		customer.last_name,
        sum(payment.amount) as `payments`
from customer
join payment
using (customer_id)
group by customer.customer_id,
		customer.first_name,
		customer.last_name
order by sum(payment.amount) desc;
		

#select all the customer payments view

SELECT * FROM customer_payments;

#create a new view shwoing customer payments that are greater than $200 using the customer_payments view
CREATE OR REPLACE VIEW large_customer_payments AS
SELECT * FROM customer_payments
WHERE payments >200;

#select all data from the large_customer_payments view
select * from large_customer_payments;

#show the tables that exist in the database.alter
show tables;

#show the tables in the database by table type
show full tables;
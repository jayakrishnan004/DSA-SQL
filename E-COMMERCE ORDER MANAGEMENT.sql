# E-COMMERCE ORDER MANAGEMENT

use trial_assessment;

# Q1. Customer Information.
# Display the complete details of customers whose city is Kochi.
select * from trial_assessment.customers where city = "kochi";

# Q2. Product Information.
# Display all products with a price greater than ₹5,000.
select product_name, price from products where price > 5000;

# Q3. Product Price Update.
# The price of the Wireless Mouse has been revised from ₹1,200 to ₹1,350. 
# Update the product information with the new price.
update products set price = 1350 where product_id = 102;

# Q4. Cancelled Order.
# Order 1005 has been cancelled, Remove it.
delete from orders where order_id = 1005;
select * from orders;

# Q5. Customer Order Report.
# Displaying the informations by joining the tables.
# Order ID, Customer Name, Product Name, Quantity, Order Date,Order Status.
select o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date, o.status 
from orders o join customers c on o.customer_id = c.customer_id
join products p on o.product_id = p.product_id;

# Q6. Order Value Report.
# Customer Name, Product Name, Quantity, Product Price, Total Order Amount.
select c.customer_name, p.product_name, o.quantity, p.price, o.quantity * p.price as total_amount 
from orders o join customers c on o.customer_id = c.customer_id
join products p on o.product_id = p.product_id;

# Q7. Customer Order Count.
# Customer ID, Customer Name, Number of Orders.
# Report should show how many orders have been placed by each customer.
select c.customer_id, c.customer_name, COUNT(o.order_id) AS number_of_orders
from customers c left join orders o on c.customer_id = o.customer_id
GROUP BY c.customer_ID, c.customer_name;

# Q8. Product Sales Summary.
# Show the total quantity sold.
select p.product_name, sum(o.quantity) as total_quantity_sold from products p join orders o on p.product_id = o.product_id group by p.product_id, p.product_name;

# Q9. Customer Purchase Summary.
# Shows total purchase amount by each customer.
select c.customer_name, sum(o.quantity * p.price) as total_purchase_amount 
from customers c join orders o on c.customer_id = o.customer_id
join products p on o.product_id = p.product_id 
group by c.customer_id, c.customer_name;

# Q10. High-Value Customers.
# total purchase amount greater than ₹10,000.
select c.customer_name, sum(o.quantity * p.price) as total_purchase_amount 
from customers c join orders o on c.customer_id = o.customer_id
join products p on o.product_id = p.product_id 
group by c.customer_id, c.customer_name 
having sum(o.quantity * p.price) > 10000;
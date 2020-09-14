create database retail_db location "/data/retail_db";

create external table orders
(order_id Int,
order_date String,
order_customer_id Int,
orderstatus String)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location "/data/retail_db/orders";


create external table order_items
(order_item_id Int,
order_item_order_id Int,
order_item_product_id Int,
order_item_quantity Int,
order_item_subtotal float,
order_item_product_price float)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location "/data/retail_db/order_items";


create external table products
(product_id Int, product_category_id Int, product_name String, product_description String, product_price Float, product_image String)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location "/data/retail_db/products";

create external table categories
(category_id Int, category_department_id Int, category_name String)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location "/data/retail_db/categories";

create external table departments
(department_id Int, department_name String)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location "/data/retail_db/departments";

create external table customers
(
customer_id Int, customer_fname String, customer_lname String, customer_email String, customer_password String, customer_street String, customer_city String, customer_state String, customer_zipcode String
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile
location "/data/retail_db/customers";



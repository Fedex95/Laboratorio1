LOAD DATA INFILE '/var/lib/mysql-files/orders_mysql.csv'
INTO TABLE orders_mysql
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(order_id, customer_id, channel, amount, order_date);

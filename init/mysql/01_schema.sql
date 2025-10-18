CREATE TABLE orders_mysql (
  order_id INT PRIMARY KEY,
  customer_id INT,
  channel VARCHAR(20),
  amount DECIMAL(10,2),
  order_date DATE
);


CREATE database sql_resturant;
USE sql_resturant;
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(255),
  phone VARCHAR(20)
);

CREATE TABLE meals (
  meal_id INT AUTO_INCREMENT PRIMARY KEY,
  meal_name VARCHAR(255),
  price DECIMAL(10,2),
  ingredients VARCHAR(1000) 
);

CREATE TABLE staff (
  staff_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  mobile VARCHAR(20),
  address VARCHAR(255),
  role VARCHAR(100)
); 

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  address VARCHAR(255),
  total_price DECIMAL(10,2),
  payment_method VARCHAR(50)
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY, 
  order_id INT,
  meal_id INT,
  quantity INT
);

CREATE TABLE payment_methods (
  method_id INT AUTO_INCREMENT PRIMARY KEY,
  method_name VARCHAR(100)  
);

CREATE TABLE roles (
  role_id INT AUTO_INCREMENT PRIMARY KEY,
  role_name VARCHAR(100)
);

CREATE TABLE staff_roles (
  staff_id INT,
  role_id INT,
  PRIMARY KEY (staff_id, role_id) 
);

ALTER TABLE orders 
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE order_items
ADD FOREIGN KEY (order_id) REFERENCES orders(order_id),
ADD FOREIGN KEY (meal_id) REFERENCES meals(meal_id);

ALTER TABLE staff_roles
ADD FOREIGN KEY (staff_id) REFERENCES staff(staff_id), 
ADD FOREIGN KEY (role_id) REFERENCES roles(role_id);
INSERT INTO customers (first_name, last_name, email, phone)
VALUES 
  ('John', 'Doe', 'john@example.com', '555-1234'),
  ('Jane', 'Doe', 'jane@example.com', '555-2345'),
  ('Bob', 'Smith', 'bob@example.com', '555-3456');
  
INSERT INTO meals (meal_name, price, ingredients)
VALUES
  ('Spaghetti', 9.99, 'spaghetti,tomato sauce,parmesan'),
  ('Pizza', 12.99, 'dough,tomato sauce,mozzarella,pepperoni'),
  ('Tacos', 8.99, 'tortilla,ground beef,lettuce,cheese');
  
INSERT INTO staff (name, mobile, address, role) 
VALUES
  ('Samantha', '555-5678', '123 Main St', 'Manager'),
  ('John', '555-6789', '456 Park Ave', 'Chef'),
  ('Alice', '555-7890', '789 Race St', 'Waiter');
  
INSERT INTO orders (customer_id, order_date, address, total_price, payment_method)
VALUES
  (1, '2023-01-01', '123 Acme St', 27.97, 'Visa'),
  (2, '2023-01-15', '456 Road Ave', 21.98, 'Mastercard'),
  (3, '2023-02-01', '789 Street Blvd', 31.96, 'Cash');
  
INSERT INTO order_items (order_id, meal_id, quantity)
VALUES
  (1, 1, 2), 
  (1, 2, 1),
  (2, 3, 3),
  (3, 1, 2),
  (3, 2, 1);
  
INSERT INTO payment_methods (method_name)
VALUES 
  ('Cash'),
  ('Credit Card'),
  ('Gift Card');
  
INSERT INTO roles (role_name)
VALUES
  ('Manager'),
  ('Chef'),
  ('Waiter');
  
INSERT INTO staff_roles (staff_id, role_id)  
VALUES
  (1, 1),
  (2, 2),
  (3, 3);
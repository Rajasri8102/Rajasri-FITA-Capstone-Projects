CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    segment VARCHAR(50),
    signup_date DATE
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    cost DECIMAL(10,2)
);
CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    product_id INT,
    sales_rep VARCHAR(50),
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO customers (customer_id, customer_name, city, segment, signup_date) VALUES
(1, 'Mano', 'Chennai', 'Retail', '2023-01-10'),
(2, 'Kumar', 'Bangalore', 'Corporate', '2023-01-15'),
(3, 'Ajay', 'Hyderabad', 'SMB', '2023-01-20'),
(4, 'Meena', 'Delhi', 'Retail', '2023-01-25'),
(5, 'Ravi', 'Mumbai', 'Corporate', '2023-02-01'),
(6, 'Anita', 'Chennai', 'SMB', '2023-02-05'),
(7, 'Suresh', 'Pune', 'Retail', '2023-02-10'),
(8, 'Priya', 'Kolkata', 'Corporate', '2023-02-15'),
(9, 'Vijay', 'Chennai', 'SMB', '2023-02-20'),
(10, 'Lakshmi', 'Bangalore', 'Retail', '2023-02-25'),
(11, 'Arun', 'Delhi', 'Corporate', '2023-03-01'),
(12, 'Divya', 'Mumbai', 'SMB', '2023-03-05'),
(13, 'Naveen', 'Hyderabad', 'Retail', '2023-03-10'),
(14, 'Geetha', 'Chennai', 'Corporate', '2023-03-15'),
(15, 'Ramesh', 'Pune', 'SMB', '2023-03-20'),
(16, 'Shalini', 'Kolkata', 'Retail', '2023-03-25'),
(17, 'Deepak', 'Delhi', 'Corporate', '2023-04-01'),
(18, 'Sandhya', 'Mumbai', 'SMB', '2023-04-05'),
(19, 'Harish', 'Hyderabad', 'Retail', '2023-04-10'),
(20, 'Kavitha', 'Chennai', 'Corporate', '2023-04-15'),
(21, 'Rajesh', 'Pune', 'SMB', '2023-04-20'),
(22, 'Sneha', 'Kolkata', 'Retail', '2023-04-25'),
(23, 'Mohan', 'Delhi', 'Corporate', '2023-05-01'),
(24, 'Vidya', 'Mumbai', 'SMB', '2023-05-05'),
(25, 'Ashok', 'Hyderabad', 'Retail', '2023-05-10'),
(26, 'Latha', 'Chennai', 'Corporate', '2023-05-15'),
(27, 'Karthik', 'Pune', 'SMB', '2023-05-20'),
(28, 'Bhavana', 'Kolkata', 'Retail', '2023-05-25'),
(29, 'Sathish', 'Delhi', 'Corporate', '2023-06-01'),
(30, 'Pooja', 'Mumbai', 'SMB', '2023-06-05'),
(31, 'Ganesh', 'Hyderabad', 'Retail', '2023-06-10'),
(32, 'Radha', 'Chennai', 'Corporate', '2023-06-15'),
(33, 'Vikram', 'Pune', 'SMB', '2023-06-20'),
(34, 'Nisha', 'Kolkata', 'Retail', '2023-06-25'),
(35, 'Surya', 'Delhi', 'Corporate', '2023-07-01'),
(36, 'Anjali', 'Mumbai', 'SMB', '2023-07-05'),
(37, 'Hari', 'Hyderabad', 'Retail', '2023-07-10'),
(38, 'Malathi', 'Chennai', 'Corporate', '2023-07-15'),
(39, 'Santosh', 'Pune', 'SMB', '2023-07-20'),
(40, 'Preethi', 'Kolkata', 'Retail', '2023-07-25'),
(41, 'Bala', 'Delhi', 'Corporate', '2023-08-01'),
(42, 'Uma', 'Mumbai', 'SMB', '2023-08-05'),
(43, 'Shankar', 'Hyderabad', 'Retail', '2023-08-10'),
(44, 'Gayathri', 'Chennai', 'Corporate', '2023-08-15'),
(45, 'Murali', 'Pune', 'SMB', '2023-08-20'),
(46, 'Sowmya', 'Kolkata', 'Retail', '2023-08-25'),
(47, 'Nithin', 'Delhi', 'Corporate', '2023-09-01'),
(48, 'Revathi', 'Mumbai', 'SMB', '2023-09-05'),
(49, 'Ashwin', 'Hyderabad', 'Retail', '2023-09-10'),
(50, 'Keerthi', 'Chennai', 'Corporate', '2023-09-15');
INSERT INTO products (product_id, product_name, category, price, cost) VALUES
(101, 'Laptop', 'Electronics', 55000.00, 45000.00),
(102, 'Mobile Phone', 'Electronics', 25000.00, 20000.00), 
(103, 'Tablet', 'Electronics', 30000.00, 25000.00), 
(104, 'Headphones', 'Accessories', 2000.00, 1200.00),
(105, 'Smartwatch', 'Accessories', 8000.00, 5000.00), 
(106, 'Printer', 'Office Supplies', 12000.00, 9000.00), 
(107, 'Desk Chair', 'Furniture', 7000.00, 4000.00), 
(108, 'Notebook', 'Stationery', 100.00, 50.00), 
(109, 'Pen Set', 'Stationery', 200.00, 100.00), 
(110, 'Monitor', 'Electronics', 15000.00, 10000.00), 
(111, 'Keyboard', 'Electronics', 1500.00, 800.00), 
(112, 'Mouse', 'Electronics', 800.00, 400.00), 
(113, 'Router', 'Electronics', 3500.00, 2000.00), 
(114, 'External HDD', 'Electronics', 5000.00, 3500.00), 
(115, 'SSD Drive', 'Electronics', 7000.00, 5000.00), 
(116, 'Office Desk', 'Furniture', 12000.00, 8000.00), 
(117, 'Bookshelf', 'Furniture', 9000.00, 6000.00), 
(118, 'Whiteboard', 'Office Supplies', 3000.00, 2000.00), 
(119, 'Stapler', 'Stationery', 150.00, 80.00), 
(120, 'Calculator', 'Stationery', 500.00, 250.00), 
(121, 'Projector', 'Electronics', 25000.00, 18000.00), 
(122, 'Camera', 'Electronics', 40000.00, 30000.00), 
(123, 'Tripod', 'Accessories', 1500.00, 900.00), 
(124, 'Speakers', 'Accessories', 3500.00, 2000.00), 
(125, 'Coffee Machine', 'Office Supplies', 6000.00, 4000.00), 
(126, 'Water Bottle', 'Stationery', 300.00, 150.00), 
(127, 'Desk Lamp', 'Furniture', 2500.00, 1500.00), 
(128, 'Couch', 'Furniture', 20000.00, 15000.00), 
(129, 'Conference Table', 'Furniture', 30000.00, 22000.00), 
(130, 'Scanner', 'Office Supplies', 15000.00, 10000.00), 
(131, 'Paper Pack', 'Stationery', 400.00, 200.00), 
(132, 'Glue Stick', 'Stationery', 50.00, 20.00), 
(133, 'Eraser Set', 'Stationery', 30.00, 10.00), 
(134, 'Marker Set', 'Stationery', 120.00, 60.00), 
(135, 'TV', 'Electronics', 45000.00, 35000.00),
(136, 'Air Conditioner', 'Electronics', 32000.00, 25000.00),
(137, 'Ceiling Fan', 'Electronics', 4000.00, 2500.00),
(138, 'Microwave Oven', 'Electronics', 15000.00, 10000.00),
(139, 'Refrigerator', 'Electronics', 45000.00, 35000.00),
(140, 'Washing Machine', 'Electronics', 38000.00, 28000.00),
(141, 'Dining Table', 'Furniture', 25000.00, 18000.00),
(142, 'Wardrobe', 'Furniture', 30000.00, 22000.00),
(143, 'Office Cabinet', 'Furniture', 15000.00, 10000.00),
(144, 'Sofa Set', 'Furniture', 40000.00, 30000.00),
(145, 'Bed Frame', 'Furniture', 35000.00, 25000.00),
(146, 'Curtains', 'Accessories', 2000.00, 1200.00),
(147, 'Wall Clock', 'Accessories', 1500.00, 800.00),
(148, 'Photo Frame', 'Accessories', 700.00, 300.00),
(149, 'Table Cover', 'Accessories', 500.00, 200.00),
(150, 'Floor Mat', 'Accessories', 1200.00, 600.00);
INSERT INTO sales (order_id, order_date, customer_id, product_id, sales_rep, quantity) VALUES
(1001, '2023-01-15', 1, 101, 'Rep_A', 2),
(1002, '2023-01-18', 2, 104, 'Rep_B', 1),
(1003, '2023-01-20', 3, 102, 'Rep_A', 3),
(1004, '2023-01-25', 4, 105, 'Rep_C', 1),
(1005, '2023-02-02', 5, 106, 'Rep_B', 2),
(1006, '2023-02-05', 6, 103, 'Rep_A', 1),
(1007, '2023-02-10', 7, 107, 'Rep_C', 4),
(1008, '2023-02-15', 8, 108, 'Rep_B', 5),
(1009, '2023-02-20', 9, 109, 'Rep_A', 2),
(1010, '2023-02-25', 10, 110, 'Rep_C', 1),
(1011, '2023-03-01', 11, 102, 'Rep_B', 2),
(1012, '2023-03-05', 12, 103, 'Rep_A', 1),
(1013, '2023-03-10', 13, 104, 'Rep_C', 3),
(1014, '2023-03-15', 14, 105, 'Rep_B', 2),
(1015, '2023-03-20', 15, 106, 'Rep_A', 1),
(1016, '2023-03-25', 16, 107, 'Rep_C', 4),
(1017, '2023-03-30', 17, 108, 'Rep_B', 5),
(1018, '2023-04-02', 18, 109, 'Rep_A', 2),
(1019, '2023-04-05', 19, 110, 'Rep_C', 1),
(1020, '2023-04-10', 20, 101, 'Rep_B', 3),
(1021, '2023-04-15', 21, 104, 'Rep_A', 2),
(1022, '2023-04-20', 22, 105, 'Rep_C', 1),
(1023, '2023-04-25', 23, 106, 'Rep_B', 2),
(1024, '2023-05-01', 24, 107, 'Rep_A', 3),
(1025, '2023-05-05', 25, 108, 'Rep_C', 4),
(1026, '2023-05-10', 26, 109, 'Rep_B', 5),
(1027, '2023-05-15', 27, 110, 'Rep_A', 2),
(1028, '2023-05-20', 28, 101, 'Rep_C', 1),
(1029, '2023-05-25', 29, 102, 'Rep_B', 3),
(1030, '2023-06-01', 30, 103, 'Rep_A', 2),
(1031, '2023-06-05', 31, 104, 'Rep_C', 1),
(1032, '2023-06-10', 32, 105, 'Rep_B', 2),
(1033, '2023-06-15', 33, 106, 'Rep_A', 3),
(1034, '2023-06-20', 34, 107, 'Rep_C', 4),
(1035, '2023-06-25', 35, 108, 'Rep_B', 5),
(1036, '2023-07-01', 36, 109, 'Rep_A', 2),
(1037, '2023-07-05', 37, 110, 'Rep_C', 1),
(1038, '2023-07-10', 38, 101, 'Rep_B', 3),
(1039, '2023-07-15', 39, 102, 'Rep_A', 2),
(1040, '2023-07-20', 40, 103, 'Rep_C', 1),
(1041, '2023-07-25', 41, 104, 'Rep_B', 2),
(1042, '2023-08-01', 42, 105, 'Rep_A', 3),
(1043, '2023-08-05', 43, 106, 'Rep_C', 4),
(1044, '2023-08-10', 44, 107, 'Rep_B', 5),
(1045, '2023-08-15', 45, 108, 'Rep_A', 2),
(1046, '2023-08-20', 46, 109, 'Rep_C', 1),
(1047, '2023-08-25', 47, 110, 'Rep_B', 3),
(1048, '2023-09-01', 48, 101, 'Rep_A', 2),
(1049, '2023-09-05', 49, 102, 'Rep_C', 1),
(1050, '2023-09-10', 50, 103, 'Rep_B', 2);

























  


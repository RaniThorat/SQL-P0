-- Create Orders Table
CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    book_id INT,
    quantity INT,
    order_date DATE,
    total_cost DECIMAL(10, 2)
);

-- Create Vendors Table
CREATE TABLE Vendors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    contact_info VARCHAR(100)
);

-- Create Order Items Table
CREATE TABLE Order_Items (
    id SERIAL PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    cost DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Create Receipts Table
CREATE TABLE Receipts (
    id SERIAL PRIMARY KEY,
    order_id INT,
    receipt_date DATE,
    total_cost DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Create Invoices Table
CREATE TABLE Invoices (
    id SERIAL PRIMARY KEY,
    order_id INT,
    invoice_date DATE,
    total_cost DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);




-- Insert into Orders table
INSERT INTO Orders (book_id, quantity, order_date, total_cost) VALUES
(1, 5, '2022-01-01', 100.00),
(2, 10, '2022-02-01', 200.00),
(3, 3, '2022-03-01', 75.00),
(4, 8, '2022-04-01', 160.00),
(5, 12, '2022-05-01', 300.00),
(1, 15, '2022-06-01', 300.00),
(2, 20, '2022-07-01', 400.00),
(3, 4, '2022-08-01', 100.00),
(4, 9, '2022-09-01', 180.00),
(5, 14, '2022-10-01', 350.00);


-- Insert into Vendors table
INSERT INTO Vendors (name, address, contact_info) VALUES
('ABC Books', '123 Main St', 'abcbooks@example.com'),
('DEF Publishers', '456 Elm St', 'defpub@example.com'),
('GHI Distributors', '789 Oak St', 'ghidist@example.com'),
('JKL Wholesalers', '321 Maple St', 'jklwhole@example.com'),
('MNO Suppliers', '901 Pine St', 'mnosupply@example.com'),
('PQR Distributors', '902 Birch St', 'pqrdist@example.com'),
('STU Publishers', '903 Cedar St', 'stupub@example.com'),
('VWX Books', '904 Maple Ave', 'vwxbooks@example.com'),
('YZA Suppliers', '905 Cherry Rd', 'yzasup@example.com'),
('BCD Wholesalers', '906 Elm Ave', 'bcdwhole@example.com');


-- Insert into Order_Items table
INSERT INTO Order_Items (order_id, book_id, quantity, cost) VALUES
(1, 1, 5, 20.00),
(2, 2, 10, 20.00),
(3, 3, 3, 25.00),
(4, 4, 8, 20.00),
(5, 5, 12, 25.00),
(6, 1, 5, 20.00),
(7, 2, 10, 20.00),
(8, 3, 4, 25.00),
(9, 4, 9, 20.00),
(10, 5, 14, 25.00);


-- Insert into Receipts table
INSERT INTO Receipts (order_id, receipt_date, total_cost) VALUES
(1, '2022-01-15', 100.00),
(2, '2022-02-15', 200.00),
(3, '2022-03-20', 75.00),
(4, '2022-04-25', 160.00),
(5, '2022-05-30', 300.00),
(6, '2022-06-15', 300.00),
(7, '2022-07-15', 400.00),
(8, '2022-08-15', 100.00),
(9, '2022-09-15', 180.00),
(10, '2022-10-15', 350.00);


-- Insert into Invoices table
INSERT INTO Invoices (order_id, invoice_date, total_cost) VALUES
(1, '2022-01-20', 100.00),
(2, '2022-02-20', 200.00),
(3, '2022-03-25', 75.00),
(4, '2022-04-30', 160.00),
(5, '2022-05-30', 300.00),
(6, '2022-06-20', 300.00),
(7, '2022-07-20', 400.00),
(8, '2022-08-20', 100.00),
(9, '2022-09-20', 180.00),
(10, '2022-10-20', 350.00);


select * from Orders;
select * from Vendors;
select * from Order_Items;
select * from Receipts;
select * from  Invoices;


select sum(total_cost) from orders; 



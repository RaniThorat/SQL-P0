-- Create Circulation Stats Table
CREATE TABLE Circulation_Stats (
    id SERIAL PRIMARY KEY,
    date DATE,
    total_checkouts INT,
    total_returns INT
);

-- Create Collection Stats Table
CREATE TABLE Collection_Stats (
    id SERIAL PRIMARY KEY,
    date DATE,
    total_books INT,
    total_authors INT
);

-- Create Patron Stats Table
CREATE TABLE Patron_Stats (
    id SERIAL PRIMARY KEY,
    date DATE,
    total_patrons INT,
    total_membership INT
);

-- Create Fine Stats Table
CREATE TABLE Fine_Stats (
    id SERIAL PRIMARY KEY,
    date DATE,
    total_fines DECIMAL(10, 2),
    total_payments DECIMAL(10, 2)
);

-- Create Survey Responses Table
CREATE TABLE Survey_Responses (
    id SERIAL PRIMARY KEY,
    date DATE,
    question_id INT,
    response_text VARCHAR(255)
);



-- Insert into Circulation_Stats table
INSERT INTO Circulation_Stats (date, total_checkouts, total_returns) VALUES
('2022-01-01', 100, 50),
('2022-02-01', 120, 60),
('2022-03-01', 110, 55),
('2022-04-01', 130, 65),
('2022-05-01', 140, 70),
('2022-06-01', 150, 75),
('2022-07-01', 160, 80),
('2022-08-01', 170, 85),
('2022-09-01', 180, 90),
('2022-10-01', 190, 95),
('2022-11-01', 200, 100),
('2022-12-01', 210, 105),
('2023-01-01', 220, 110),
('2023-02-01', 230, 115),
('2023-03-01', 240, 120);


-- Insert into Collection_Stats table
INSERT INTO Collection_Stats (date, total_books, total_authors) VALUES
('2022-01-01', 10000, 500),
('2022-02-01', 10100, 510),
('2022-03-01', 10200, 520),
('2022-04-01', 10300, 530),
('2022-05-01', 10400, 540),
('2022-06-01', 10500, 550),
('2022-07-01', 10600, 560),
('2022-08-01', 10700, 570),
('2022-09-01', 10800, 580),
('2022-10-01', 10900, 590),
('2022-11-01', 11000, 600),
('2022-12-01', 11100, 610),
('2023-01-01', 11200, 620),
('2023-02-01', 11300, 630),
('2023-03-01', 11400, 640);


-- Insert into Patron_Stats table
INSERT INTO Patron_Stats (date, total_patrons, total_membership) VALUES
('2022-01-01', 500, 400),
('2022-02-01', 510, 410),
('2022-03-01', 520, 420),
('2022-04-01', 530, 430),
('2022-05-01', 540, 440),
('2022-06-01', 550, 450),
('2022-07-01', 560, 460),
('2022-08-01', 570, 470),
('2022-09-01', 580, 480),
('2022-10-01', 590, 490),
('2022-11-01', 600, 500),
('2022-12-01', 610, 510),
('2023-01-01', 620, 520),
('2023-02-01', 630, 530),
('2023-03-01', 640, 540);


-- Insert into Fine_Stats table
INSERT INTO Fine_Stats (date, total_fines, total_payments) VALUES
('2022-01-01', 100.00, 50.00),
('2022-02-01', 120.00, 60.00),
('2022-03-01', 110.00, 55.00),
('2022-04-01', 130.00, 65.00),
('2022-05-01', 140.00, 70.00),
('2022-06-01', 150.00, 75.00),
('2022-07-01', 160.00, 80.00),
('2022-08-01', 170.00, 85.00),
('2022-09-01', 180.00, 90.00),
('2022-10-01', 190.00, 95.00),
('2022-11-01', 200.00, 100.00),
('2022-12-01', 210.00, 105.00),
('2023-01-01', 220.00, 110.00),
('2023-02-01', 230.00, 115.00),
('2023-03-01', 240.00, 120.00);


-- Insert into Survey_Responses table
INSERT INTO Survey_Responses (date, question_id, response_text) VALUES
('2022-01-01', 1, 'Excellent'),
('2022-02-01', 2, 'Good'),
('2022-03-01', 1, 'Excellent'),
('2022-04-01', 3, 'Fair'),
('2022-05-01', 2, 'Good'),
('2022-06-01', 1, 'Excellent'),
('2022-07-01', 2, 'Good'),
('2022-08-01', 3, 'Fair'),
('2022-09-01', 1, 'Excellent'),
('2022-10-01', 2, 'Good'),
('2022-11-01', 3, 'Fair'),
('2022-12-01', 1, 'Excellent'),
('2023-01-01', 2, 'Good'),
('2023-02-01', 3, 'Fair'),
('2023-03-01', 1, 'Excellent');


select * from Circulation_Stats;
select * from Collection_Stats;
select * from Patron_Stats;
select * from Fine_Stats;
select * from Survey_Responses;

SELECT * FROM Fine_Stats
WHERE total_fines BETWEEN 100.00 AND 200.00;

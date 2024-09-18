-- Create Books Table
CREATE TABLE Books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    publication_date DATE,
    ISBN VARCHAR(13)
);

-- Create Authors Table
CREATE TABLE Authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    biography TEXT
);

-- Create Publishers Table
CREATE TABLE Publishers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255)
);

-- Create Genres Table
CREATE TABLE Genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT
);

-- Create Book_Genres Table
CREATE TABLE Book_Genres (
    id SERIAL PRIMARY KEY,
    book_id INT,
    genre_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (genre_id) REFERENCES Genres(id)
);



-- Insert into Authors table
INSERT INTO Authors (name, biography) VALUES
('Harper Lee', 'Harper Lee was an American novelist known for her Pulitzer Prize-winning novel, To Kill a Mockingbird.'),
('George Orwell', 'George Orwell was a British novelist, essayist, and critic known for his dystopian novel, 1984.'),
('F. Scott Fitzgerald', 'F. Scott Fitzgerald was an American novelist and short story writer known for his novels and stories that capture the essence of the Jazz Age.'),
('Jane Austen', 'Jane Austen was an English novelist known for her novels of manners and romance, such as Pride and Prejudice.'),
('Mark Twain', 'Mark Twain was an American writer, humorist, and entrepreneur known for The Adventures of Tom Sawyer.'),
('Ernest Hemingway', 'Ernest Hemingway was an American novelist and short-story writer, known for works like The Old Man and the Sea.'),
('J.K. Rowling', 'J.K. Rowling is a British author, best known for writing the Harry Potter series.'),
('J.R.R. Tolkien', 'J.R.R. Tolkien was an English writer, poet, and philologist, best known for The Lord of the Rings.'),
('Charles Dickens', 'Charles Dickens was an English writer and social critic, known for A Tale of Two Cities.'),
('Leo Tolstoy', 'Leo Tolstoy was a Russian writer, known for War and Peace and Anna Karenina.'),
('Aldous Huxley', 'Aldous Huxley was an English writer, best known for Brave New World.'),
('Joseph Heller', 'Joseph Heller was an American author of the satirical novel Catch-22.'),
('J.D. Salinger', 'J.D. Salinger was an American writer, known for The Catcher in the Rye.'),
('William Golding', 'William Golding was a British novelist, playwright, and poet, known for Lord of the Flies.'),
('Herman Melville', 'Herman Melville was an American novelist, known for Moby-Dick.');


-- Insert into Publishers table
INSERT INTO Publishers (name, address) VALUES
('J.B. Lippincott & Co.', 'Philadelphia, PA'),
('Secker and Warburg', 'London, UK'),
('Charles Scribner''s Sons', 'New York, NY'),
('T. Egerton', 'London, UK'),
('Random House', 'New York, NY'),
('Penguin Books', 'London, UK'),
('HarperCollins', 'New York, NY'),
('Macmillan Publishers', 'London, UK'),
('Houghton Mifflin Harcourt', 'Boston, MA'),
('Simon & Schuster', 'New York, NY');


-- Insert into Genres table
INSERT INTO Genres (name, description) VALUES
('Fiction', 'Novels and short stories that are not based on real events.'),
('Classics', 'Novels and works of literature considered to be of high importance and influence.'),
('Mystery', 'Novels and stories that involve solving a puzzle or uncovering a hidden truth.'),
('Romance', 'Stories that focus on the romantic relationships between characters.'),
('Science Fiction', 'Stories that often involve futuristic settings or advanced technology.'),
('Fantasy', 'Novels that feature magical or supernatural elements.'),
('Horror', 'Stories that aim to evoke fear or dread.'),
('Historical Fiction', 'Novels set in the past that often involve real events or people.'),
('Thriller', 'Fast-paced stories that involve suspense, excitement, and tension.'),
('Adventure', 'Stories that involve journeys or explorations.');


-- Insert into Books table
INSERT INTO Books (title, author_id, publication_date, ISBN) VALUES
('To Kill a Mockingbird', 1, '1960-07-11', '9780061120084'),
('1984', 2, '1949-06-08', '9780451524935'),
('The Great Gatsby', 3, '1925-04-10', '9780743273565'),
('Pride and Prejudice', 4, '1813-01-28', '9780141439511'),
('The Adventures of Tom Sawyer', 5, '1876-06-20', '9780143039563'),
('The Old Man and the Sea', 6, '1952-09-01', '9780684801223'),
('Harry Potter and the Philosopher''s Stone', 7, '1997-06-26', '9780747532743'),
('The Hobbit', 8, '1937-09-21', '9780261102217'),
('A Tale of Two Cities', 9, '1859-04-30', '9780141439603'),
('War and Peace', 10, '1869-01-01', '9780199232765'),
('Brave New World', 11, '1932-08-01', '9780060850524'),
('Catch-22', 12, '1961-11-10', '9781451626650'),
('The Catcher in the Rye', 13, '1951-07-16', '9780316769488'),
('Lord of the Flies', 14, '1954-09-17', '9780399501487'),
('Moby-Dick', 15, '1851-10-18', '9781503280786');


-- Insert into Book_Genres table
INSERT INTO Book_Genres (book_id, genre_id) VALUES
(1, 2), -- To Kill a Mockingbird is a Classic
(2, 1), -- 1984 is Fiction
(3, 2), -- The Great Gatsby is a Classic
(4, 4), -- Pride and Prejudice is a Romance
(5, 9), -- The Adventures of Tom Sawyer is Adventure
(6, 1), -- The Old Man and the Sea is Fiction
(7, 6), -- Harry Potter and the Philosopher's Stone is Fantasy
(8, 6), -- The Hobbit is Fantasy
(9, 2), -- A Tale of Two Cities is a Classic
(10, 2), -- War and Peace is a Classic
(11, 5), -- Brave New World is Science Fiction
(12, 1), -- Catch-22 is Fiction
(13, 2), -- The Catcher in the Rye is a Classic
(14, 1), -- Lord of the Flies is Fiction
(15, 2); -- Moby-Dick is a Classic



select * from Books;
select * from Authors;
select * from Publishers;
select * from Genres;
select * from Book_Genres;


SELECT title, publication_date
FROM Books
WHERE title = '1984';

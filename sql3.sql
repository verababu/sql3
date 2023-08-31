CREATE DATABASE BooksDB;

-- Switch to the newly created database
USE BooksDB;

-- Create the "Books" table
CREATE TABLE Books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    publication_year INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert data into the "Books" table
INSERT INTO Books (title, author, genre, publication_year, price)
VALUES
    ('Book1', 'Author1', 'Fiction', 2020, 19.99),
    ('Book2', 'Author2', 'Mystery', 2018, 15.50),
    ('Book3', 'Author3', 'Science Fiction', 2022, 22.75),
    ('Book4', 'Author4', 'Fantasy', 2015, 12.99),
    ('Book5', 'Author5', 'Romance', 2019, 17.2;5),
    ('Book6', 'Author6', 'Thriller', 2021, 20.00),
    ('Book7', 'Author7', 'Mystery', 2017, 14.95),
    ('Book8', 'Author8', 'Non-Fiction', 2020, 18.50),
    ('Book9', 'Author9', 'Historical Fiction', 2016, 16.75),
    ('Book10', 'Author10', 'Science Fiction', 2023, 24.99);

-- Retrieve all the books
SELECT * FROM Books;

-- Retrieve the details of a book based on its title
SELECT * FROM Books WHERE title = 'Book3';

-- Update the price of a book
UPDATE Books SET price = 21.50 WHERE title = 'Book6';

-- Delete a book from the database based on its title
DELETE FROM Books WHERE title = 'Book8';
CREATE DATABASE example_db;
USE example_db;

CREATE TABLE group1 (
    person_id INT PRIMARY KEY,
    person_name VARCHAR(80),
    registration_id INT
);

CREATE TABLE group2 (
    registration_id INT PRIMARY KEY,
    registration_name VARCHAR(80)
);

-- Insert values into group1 table
INSERT INTO group1 (person_id, person_name, registration_id) VALUES
(1, 'Mita', 1),
(2, 'Rita', 2),
(3, 'Sneha', 3),
(4, 'Karina', 2),
(5, 'Mina', NULL);

-- Insert values into group2 table
INSERT INTO group2 (registration_id, registration_name) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

SELECT * FROM group1 NATURAL JOIN group2;

-- Inner Join
SELECT * FROM group1 INNER JOIN group2 ON group1.registration_id = group2.registration_id;

-- Left Join
SELECT * FROM group1 LEFT JOIN group2 ON group1.registration_id = group2.registration_id;

-- Right Join
SELECT * FROM group1 RIGHT JOIN group2 ON group1.registration_id = group2.registration_id;

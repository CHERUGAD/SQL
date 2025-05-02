

-- Create a new table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(5)
);

-- Insert sample data
INSERT INTO students (id, name, age, grade) VALUES (1, 'Ravi', 20, 'A');
INSERT INTO students (id, name, age, grade) VALUES (2, 'Kiran', 21, 'B');
INSERT INTO students (id, name, age, grade) VALUES (3, 'Cherugad', 19, 'A+');

-- View the table
SELECT * FROM students;-- Create a new database

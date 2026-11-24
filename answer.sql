-- QUESTION 1: Create student table

CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- QUESTION 2: Insert three records

INSERT INTO student (id, fullName, age)
VALUES
    (1, 'John Kamau', 19),
    (2, 'Mary Wanjiku', 18),
    (3, 'Peter Mwangi', 21);

-- QUESTION 3: Update student ID 2 age to 20

UPDATE student
SET age = 20
WHERE id = 2;

-- Verify the records

SELECT * FROM student;
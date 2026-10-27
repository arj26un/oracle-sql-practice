
-- Create a table
CREATE TABLE students (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    marks NUMBER(5,2)
);

-- Display table structure
DESC students;

-- Display all records
SELECT * FROM students;

-- Display selected columns
SELECT id, name FROM students;

-- Rename table
RENAME students TO student_details;
-- Display table structure
DESC student_details;


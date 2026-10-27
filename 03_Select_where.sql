
-- Display all records
SELECT * FROM student_details;

-- Apply a condition
SELECT * FROM student_details
WHERE age > 20;

-- Equal to
SELECT * FROM student_details
WHERE name = 'Arjun';

-- AND condition
SELECT * FROM student_details
WHERE age > 20 AND marks > 80;

-- OR condition
SELECT * FROM student_details
WHERE name = 'Arjun' OR name = 'Rahul';

-- BETWEEN
SELECT * FROM student_details
WHERE marks BETWEEN 70 AND 90;

-- IN
SELECT * FROM student_details
WHERE name IN ('Arjun', 'Aman');

-- LIKE
SELECT * FROM student_details
WHERE name LIKE 'A%';

-- Sort ascending
SELECT * FROM student_details
ORDER BY marks ASC;

-- Sort descending
SELECT * FROM student_details
ORDER BY marks DESC;

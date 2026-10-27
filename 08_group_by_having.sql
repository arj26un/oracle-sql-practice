
-- Group students by age
SELECT age, COUNT(*) AS total_students
FROM student_details
GROUP BY age;

-- Display age groups having more than one student
SELECT age, COUNT(*) AS total_students
FROM student_details
GROUP BY age
HAVING COUNT(*) > 1;

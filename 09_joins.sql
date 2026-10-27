
-- INNER JOIN
SELECT s.name, e.course_id
FROM student_details s
INNER JOIN enrollments e
ON s.id = e.student_id;

-- LEFT JOIN
SELECT s.name, e.course_id
FROM student_details s
LEFT JOIN enrollments e
ON s.id = e.student_id;

-- RIGHT JOIN
SELECT s.name, e.course_id
FROM student_details s
RIGHT JOIN enrollments e
ON s.id = e.student_id;

-- FULL OUTER JOIN
SELECT s.name, e.course_id
FROM student_details s
FULL OUTER JOIN enrollments e
ON s.id = e.student_id;

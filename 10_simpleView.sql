-- Create view from student table
CREATE VIEW student_view AS
SELECT id, name, age, marks
FROM student_details;

SELECT * FROM student_view;
UPDATE student_view
SET marks = 95
WHERE id = 1;

INSERT INTO student_view
VALUES (6, 'Rohit', 21, 88);

select *  from STUDENT_DETAILS;
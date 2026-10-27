
-- Insert one record
INSERT INTO student_details
VALUES (1, 'Arjun', 22, 85);

-- Insert another record
INSERT INTO student_details
VALUES (2, 'Rahul', 23, 78);

-- Insert using selected columns
INSERT INTO student_details (id, name)
VALUES (3, 'Aman');

INSERT INTO student_details VALUES (7, 'Sneha', 22, 60);
INSERT INTO student_details VALUES (8, 'Priyanshu', 20, 78);

-- Display records
SELECT * FROM student_details;



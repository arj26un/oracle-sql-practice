
-- Update marks
UPDATE student_details
SET marks = 95
WHERE id = 1;

-- Update multiple columns
UPDATE student_details
SET age = 23, marks = 88
WHERE id = 2;

-- Delete one record
DELETE FROM student_details
WHERE id = 4;


-- Undo uncommitted changes
-- ROLLBACK;
select * from  STUDENT_DETAILS;
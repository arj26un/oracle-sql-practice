
-- =====================================================
-- ORACLE SQL: COMPLEX VIEW PRACTICAL
-- Topic: Main Table vs Complex View
-- =====================================================


-- GROUP BY and aggregate functions make this a complex view.
CREATE VIEW student_summary AS
SELECT
    age,
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks,
    MAX(marks) AS highest_marks
FROM student_details
GROUP BY age;

--  DISPLAY COMPLEX VIEW
SELECT * FROM student_summary
ORDER BY age;



-- =====================================================
-- STEP 6: UPDATE MAIN TABLE
-- =====================================================

-- Change Arjun's marks 
UPDATE student_details
SET marks = 97
WHERE id = 1;




-- Check the view.

SELECT * FROM student_summary
WHERE age = 22;


-- =====================================================
-- STEP 7: INSERT INTO MAIN TABLE
-- =====================================================

-- Add a new student in age group 22.
INSERT INTO student_details
VALUES (9, 'Drishti', 22, 90);



-- The view now includes Rohit's marks.
-- Age 22 count = 3, average = (95 + 60 + 90) / 3.
SELECT * FROM student_summary
WHERE age = 22;










SELECT * FROM student_summary
WHERE age = 22;


-- =====================================================
-- STEP 9: TRY TO UPDATE THE COMPLEX VIEW
-- =====================================================

-- This command is expected to fail because
-- average_marks is a calculated aggregate column.
UPDATE student_summary
SET average_marks = 100
WHERE age = 22;


-- =====================================================
-- STEP 10: TRY TO INSERT INTO THE COMPLEX VIEW
-- =====================================================

-- This command is expected to fail because the view
-- represents grouped data, not individual student rows.
INSERT INTO student_summary
VALUES (25, 1, 80, 80);


-- =====================================================
-- STEP 11: TRY TO DELETE THROUGH THE COMPLEX VIEW
-- =====================================================

-- This command is expected to fail because Oracle
-- cannot determine which underlying student rows to delete.
DELETE FROM student_summary
WHERE age = 22;


-- =====================================================
-- STEP 12: CHANGE THE VIEW DEFINITION
-- =====================================================

-- Show only age groups whose average marks are >= 80.
-- This changes the view definition, not the table data.
CREATE OR REPLACE VIEW student_summary AS
SELECT
    age,
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks
FROM student_details
GROUP BY age
HAVING AVG(marks) >= 80;

-- Display the updated view.
SELECT * FROM student_summary
ORDER BY age;


-- =====================================================
-- STEP 13: VERIFY MAIN TABLE
-- =====================================================

-- The underlying student records remain available.
SELECT * FROM student_details
ORDER BY id;




-- 1. Create Materialized View
CREATE MATERIALIZED VIEW student_details_mv
BUILD IMMEDIATE
REFRESH COMPLETE ON DEMAND
AS
SELECT * FROM student_details;

-- 2. Update Main Table
UPDATE student_details
SET name = 'Sneha'
WHERE id = 8;

-- 3. Check Materialized View (old data remains)
SELECT * FROM student_details_mv;



-- 6. Try Updating Materialized View
UPDATE student_details_mv
SET name = 'Amit'
WHERE id = 7;

-- 7. Check Main Table
SELECT * FROM student_details;


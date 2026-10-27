

-- 1. Add a new column
ALTER TABLE student_details
ADD email VARCHAR2(100);

-- Output: Table altered.

-- 2. Modify column size
ALTER TABLE student_details
MODIFY name VARCHAR2(100);

-- Output: Table altered.

-- 3. Rename column
ALTER TABLE student_details
RENAME COLUMN email TO student_email;

-- Output: Table altered.

-- 4. Display table structure
DESC student_details;

-- Output: Shows all columns, data types,
-- and whether NULL values are allowed.

-- 5. Display all records
SELECT * FROM student_details;

-- Output: Shows all records, including
-- the new student_email column.

-- 6. Drop a column
ALTER TABLE student_details
DROP COLUMN student_email;

-- Output: Table altered.

-- 7. Verify the final table structure
DESC student_details;

-- Output: student_email is no longer present.

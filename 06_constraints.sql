
CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(50) NOT NULL,
    fees NUMBER CHECK (fees > 0),
    course_code VARCHAR2(10) UNIQUE
);

-- Foreign key example
CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    FOREIGN KEY (student_id)
        REFERENCES student_details(id),
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);
INSERT INTO courses VALUES (101, 'MCA', 120000, 'MCA01');
INSERT INTO courses VALUES (102, 'BCA', 80000, 'BCA01');
INSERT INTO courses VALUES (103, 'BTECH', 150000, 'BT01');
INSERT INTO courses VALUES (104, 'MBA', 180000, 'MBA01');
INSERT INTO courses VALUES (105, 'MTECH', 140000, 'MT01');


SELECT * FROM courses;

-- Insert enrollment records
INSERT INTO enrollments VALUES (1, 1, 101);
INSERT INTO enrollments VALUES (2, 2, 102);
INSERT INTO enrollments VALUES (3, 3, 103);
INSERT INTO enrollments VALUES (4, 4, 101);
INSERT INTO enrollments VALUES (5, 5, 104);
INSERT INTO enrollments VALUES (6, 1, 105);

-- Display enrollment data
SELECT * FROM enrollments;

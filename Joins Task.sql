CREATE TABLE student_data (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

CREATE TABLE course_data (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE institute (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO student_data VALUES
(1, 'Kumar', 101),
(2, 'Priya', 102),
(3, 'Arun', 101),
(4, 'Divya', 103),
(5, 'Karthik', NULL),
(6, 'Sneha', 105),
(7, 'Rahul', 104),
(8, 'Kavya', 102);

INSERT INTO course_data VALUES
(101, 'Python'),
(102, 'React.js'),
(103, 'Java'),
(104, 'SQL'),
(106, 'Data Analytics');

INSERT INTO institute VALUES
(1, 'Salem Branch'),
(2, 'Chennai Branch'),
(3, 'Coimbatore Branch'),
(4, 'Bangalore Branch');

INSERT INTO course VALUES
(201, 'Python'),
(202, 'React.js'),
(203, 'Java'),
(204, 'SQL'),
(205, 'Power BI');

SELECT * FROM student_data;

SELECT * FROM course_data;

SELECT * FROM institute;

SELECT * FROM course;

---Display all students with their enrolled course names.
SELECT s.student_name, c.course_name FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id;

SELECT s.*
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id;

SELECT s.student_id, s.student_name, c.course_name
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id;

SELECT s.student_name, c.course_name
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id
WHERE s.student_name LIKE '%Kumar%';

SELECT s.*
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id
WHERE c.course_name = 'React.js';

SELECT s.student_id, s.student_name, c.course_id
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id;

SELECT *
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id;

SELECT COUNT(*) AS total_enrollments
FROM student_data s
INNER JOIN course_data c
ON s.course_id = c.course_id;

-------LEFT Joins
----Display all students even if course details are missing
SELECT s.*, c.course_name
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id;

SELECT s.*
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id
WHERE s.course_id IS NULL;

SELECT s.student_name, c.course_name
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id
WHERE c.course_name IS NULL;

SELECT s.student_name, c.course_name
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id;

SELECT s.*
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id
WHERE s.course_id IS NOT NULL
AND c.course_id IS NULL;

SELECT s.*
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id
WHERE c.course_id IS NULL;

SELECT s.*, c.course_name
FROM student_data s
LEFT JOIN course_data c
ON s.course_id = c.course_id;

------RIGHT JOIN

SELECT c.*, s.student_name
FROM student_data s
RIGHT JOIN course_data c
ON s.course_id = c.course_id;

SELECT c.*
FROM student_data s
RIGHT JOIN course_data c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

SELECT c.course_name, s.student_name
FROM student_data s
RIGHT JOIN course_data c
ON s.course_id = c.course_id
WHERE s.student_name IS NULL;

SELECT c.course_name, s.student_name
FROM student_data s
RIGHT JOIN course_data c
ON s.course_id = c.course_id;

SELECT c.course_id, c.course_name
FROM student_data s
RIGHT JOIN course_data c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;


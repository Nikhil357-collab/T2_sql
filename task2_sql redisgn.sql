-- =========================================
-- Advanced Students Table Design
-- =========================================

USE intern_training_db;

-- 1. Drop table if exists (clean start for learning)
DROP TABLE IF EXISTS students;

-- 2. Create students table with proper data types & constraints
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    age INT NOT NULL,
    date_of_birth DATE
);

-- 3. Insert valid data
INSERT INTO students (id, name, email, age, date_of_birth) VALUES
(1, 'Rohit', 'rohit@gmail.com', 20, '2004-05-10'),
(2, 'Sonata', 'sonata@gmail.com', 21, '2003-08-15'),
(3, 'claude', 'claude@gmail.com', 19, '2005-01-22');

-- 4. Try inserting INVALID data (will fail)

-- Duplicate PRIMARY KEY (id)
INSERT INTO students VALUES (1, 'Test User', 'rohit@gmail.com', 22, '2002-01-01');

-- Duplicate UNIQUE email
--INSERT INTO students VALUES (4, 'Test User', 'sonata@gmail.com', 22, '2002-01-01');

-- NULL in NOT NULL column
-- INTO students VALUES (5, NULL, 'null.name@gmail.com', 20, '2004-02-02');

-- 5. Verify current data
SELECT * FROM students;

-- 6. ALTER TABLE: Add a new column
ALTER TABLE students
ADD phone_number VARCHAR(15);

-- 7. ALTER TABLE: Rename a column
ALTER TABLE students
RENAME COLUMN phone_number TO mobile_number;

-- 8. ALTER TABLE: Drop a column (use carefully)
ALTER TABLE students
DROP COLUMN date_of_birth;
SELECT * FROM students;
-- 9. Final structure verification
-- DESCRIBE studentsname VARCHAR(100) NOT NULL

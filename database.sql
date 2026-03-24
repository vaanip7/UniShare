-- ==============================
-- CREATE DATABASE
-- ==============================
CREATE DATABASE college_portal;

USE college_portal;

-- ==============================
-- USERS TABLE
-- ==============================
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    role VARCHAR(20)
);

-- ==============================
-- ASSIGNMENTS TABLE
-- ==============================
CREATE TABLE assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    deadline VARCHAR(50),
    created_by INT
);

-- ==============================
-- MATERIALS TABLE
-- ==============================
CREATE TABLE materials (
    material_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    file_path VARCHAR(255),
    uploaded_by INT
);

-- ==============================
-- SUBMISSIONS TABLE
-- ==============================
CREATE TABLE submissions (
    submission_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    assignment_title VARCHAR(100),
    file_name VARCHAR(255)
);

-- ==============================
-- SAMPLE DATA (OPTIONAL)
-- ==============================

-- USERS
INSERT INTO users (name, email, password, role)
VALUES 
('Faculty1', 'faculty@gmail.com', '123', 'faculty'),
('Student1', 'student@gmail.com', '123', 'student');

-- ASSIGNMENTS
INSERT INTO assignments (title, deadline, created_by)
VALUES 
('Java Project', '5 days', 1),
('DBMS Assignment', '7 days', 1);

-- MATERIALS
INSERT INTO materials (title, file_path, uploaded_by)
VALUES 
('DSA Notes', 'dsa.pdf', 1),
('DBMS Notes', 'dbms.pdf', 1);

-- SUBMISSIONS
INSERT INTO submissions (student_name, assignment_title, file_name)
VALUES 
('Student1', 'Java Project', 'java_assignment.pdf');
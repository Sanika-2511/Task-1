-- create database

create database if not exists stud;

-- use database
use stud;

-- create table of students
CREATE TABLE students(
    s_id INT PRIMARY KEY AUTO_INCREMENT,
    s_name VARCHAR(100),
    s_phone BIGINT UNIQUE,
    s_email VARCHAR(100)
);

-- create table courses
CREATE TABLE courses(
    c_id INT PRIMARY KEY AUTO_INCREMENT,
    c_name VARCHAR(100),
    sc_id INT,
    FOREIGN KEY (sc_id) REFERENCES students(s_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- insert records 
INSERT INTO students (s_name, s_phone, s_email) VALUES
('Amit Sharma', 9876543210, 'amit.sharma@gmail.com'),
('Priya Deshmukh', 9876543211, 'priya.deshmukh@gmail.com'),
('Rohan Patil', 9876543212, 'rohan.patil@gmail.com'),
('Sneha Joshi', 9876543213, 'sneha.joshi@gmail.com'),
('Vikram Singh', 9876543214, 'vikram.singh@gmail.com'),
('Anjali Mehta', 9876543215, 'anjali.mehta@gmail.com'),
('Rahul Nair', 9876543216, 'rahul.nair@gmail.com'),
('Kavita Rao', 9876543217, 'kavita.rao@gmail.com'),
('Suresh Yadav', 9876543218, 'suresh.yadav@gmail.com'),
('Neha Kulkarni', 9876543219, 'neha.kulkarni@gmail.com');

-- insert courses
INSERT INTO courses (c_name, sc_id) VALUES
('Data Science', 1),
('Web Development', 2),
('Machine Learning', 3),
('Cyber Security', 4),
('Cloud Computing', 5),
('Artificial Intelligence', 6),
('Database Management', 7),
('Computer Networks', 8),
('Software Engineering', 9),
('Python Programming', 10);


-- accessing data
select * from students;
select * from courses;

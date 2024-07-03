CREATE DATABASE CPROJECT;
USE CPROJECT;
CREATE TABLE admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    full_name VARCHAR(100),
    department VARCHAR(100),
    position VARCHAR(100)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL  UNIQUE,
    credits INT,
    description TEXT
);

CREATE TABLE batch (
    batch_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    faculty_id INT NOT NULL,
    batch_name VARCHAR(100) NOT NULL UNIQUE,
    start_date DATE,
    end_date DATE,
    duration INT,
    no_of_students INT,
    foreign key(course_id) references course(course_id) ON DELETE CASCADE,
    foreign key(faculty_id) references faculty(faculty_id) ON DELETE CASCADE
);
    CREATE TABLE course_plan (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    batch_id INT NOT NULL,
    day_no INT,
    topic VARCHAR(100),
    status VARCHAR(100),
    room_no INT,
    foreign key (batch_id) references batch(batch_id) ON DELETE CASCADE
);
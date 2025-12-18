CREATE DATABASE gym_db;

USE gym_db;

CREATE TABLE enrollments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(20),
  membership VARCHAR(50),
  message TEXT,
  enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE feedbacks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100),
  message TEXT
);

CREATE TABLE admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
email VARCHAR(30) NOT NULL
);
INSERT INTO admin(username,password,email)
 VALUES ('admin','123','harshad997@gmail.com');

CREATE TABLE staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  position VARCHAR(55),
  age INT(2),
  address VARCHAR(145),
  salary DECIMAL,
  phone VARCHAR(12),
  DOJ TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE gym_members (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  DOB DATE,
  Email VARCHAR(30),
  Contact VARCHAR(12),
  address VARCHAR(120),
  membership VALUES(12),
  alternate VARCHAR (12)
);


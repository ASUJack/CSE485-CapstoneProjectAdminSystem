CREATE TABLE students (
StudentID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL,
ASURITEID VARCHAR(10) NOT NULL,
ProjectPreferences INT[],
AssignedProjectID INT,
SignupTimestamp TIMESTAMP

);

CREATE TABLE projects (
ProjectID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
ProjectName VARCHAR(200) NOT NULL,
SponsorFirstName VARCHAR(100) NOT NULL,
SponsorLastName VARCHAR(100) NOT NULL,
SponsorEmail VARCHAR(100) NOT NULL, 
Description VARCHAR(65535) NOT NULL, 
Duration VARCHAR(100) NOT NULL, 
AssignedStudents INT[]

);

INSERT INTO students (FirstName, LastName, Email, ASURITEID)
VALUES ('Jackson', 'Walker', 'jgwalke3@asu.edu', '12120xxxxx');

INSERT INTO students (FirstName, LastName, Email, ASURITEID)
VALUES ('Brock', 'McNeil', 'bkmcneil@asu.edu', '12121xxxxx');

INSERT INTO students (FirstName, LastName, Email, ASURITEID)
VALUES ('Li', 'He', 'lihe5@asu.edu', '12122xxxxx');

INSERT INTO students (FirstName, LastName, Email, ASURITEID)
VALUES ('Yuxi', 'Liu', 'yliu886@asu.edu', '12123xxxxx');

INSERT INTO students (FirstName, LastName, Email, ASURITEID)
VALUES ('Gadisa', 'Measo', 'gmeaso@asu.edu', '12124xxxxx');

SELECT * FROM students;

INSERT INTO projects (ProjectName, SponsorFirstName, SponsorLastName, SponsorEmail, Description, Duration)
VALUES('Admin System Capstone Project','Steven','Osburn','sdosburn@asu.edu','Design a website for future capstone students and sponsors to use.','Fall 2023');

SELECT * FROM projects; 
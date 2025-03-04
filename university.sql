CREATE database university;
USE university;

CREATE TABLE Students
(
StudentID INT,
FirstName VARCHAR(100),
LastName varchar(100),
DOB INT,
Email VARCHAR(100),
DepartmentID INT
);

ALTER TABLE Students
MODIFY DOB DATE;

ALTER TABLE Students
ADD PRIMARY KEY (StudentID);

USE university;
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100)
    );
   
   
    USE university;
CREATE TABLE Courses (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(100),
DepartmentID INT,
Credits INT
);

USE university;
CREATE TABLE Professors (
ProfessorID INT PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Email VARCHAR(100),
DepartmentID INT
);
show databases;


USE university;
INSERT INTO Students(StudentID, FirstName, LastName, DOB, Email, DepartmentID) VALUES
(301, 'David', 'Brown', '1999-04-05', 'david.brown@university.com', 1),
(302, 'Emily', 'White', '2000-08-12', 'emily.white@university.com', 2),
(303, 'Frank', 'Wilson','1998-11-23', 'frank.wilson@university.com', 3);
select *from Students;

USE university;
INSERT INTO Departments(DepartmentID, DepartmentName, Location) VALUES
(1, 'Computer Science', 'Building A'),
(2, 'Mathematics', 'Building B'),
(3, 'Physics', 'Building C');
select *from Departments;

USE university;
INSERT INTO Courses(CourseID, CourseName, DepartmentID, Credits) VALUES
(101, 'Introduction to Programming', 1, 3),
(102, 'Algebra', 2, 4),
(103, 'Quantum Mechanics', 3, 4);
select *from Courses;


USE university;
INSERT INTO Professors(ProfessorID, FirstName, LastName, Email, DepartmentID) VALUES
(201, 'Alice', 'Johnson', 'alice.johnson@university.com', 1),
(202, 'Bob', 'Smith', 'bob.smithn@university.com', 2),
(203, 'Carol', 'Taylor', 'carol.taylor@university.com', 3);
select *from Professors;

SELECT FirstName, LastName, Email FROM Students;

SELECT *FROM Students WHERE DepartmentID = 3;

UPDATE Students
SET FirstName='Payal',LastName='Sharma'
WHERE LastName='Brown';
select* from Students;

UPDATE Departments
SET DepartmentName= 'English'
WHERE Location= 'Building B';
select* from Departments;

DELETE FROM Departments
WHERE DepartmentName='Physics';
SELECT* FROM Departments;

INSERT INTO Departments(DepartmentID, DepartmentName, Location) VALUES
(4, 'Hindi', 'Building D');
SELECT * FROM Departments;

INSERT INTO Courses(CourseID, CourseName, DepartmentID, Credits) VALUES
(104, 'Algebra', 5,6);
SELECT* FROM Courses;

SELECT* FROM Courses
WHERE Credits>4 AND CourseName='Algebra';

SELECT* FROM Courses
WHERE Credits>4 OR CourseName='Algebra';

SELECT* FROM Departments
WHERE Location='Building A' OR Location='Building C';

UPDATE Departments
Set Location='Building E'
WHERE NOT Location='Building A';
SELECT* FROM Departments;

SELECT FirstName, LastName FROM Professors
WHERE DepartmentID IN(SELECT DepartmentID FROM Departments WHERE DepartmentID=2);



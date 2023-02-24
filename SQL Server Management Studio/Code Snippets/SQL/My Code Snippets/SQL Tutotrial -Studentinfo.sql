 ---#CREATING A SCHEMA

--CREATE DATABASE StudentWorksheet;
-- DROP TABLE StudentInformation;
-- CREATE TABLE StudentInformation (
-- 	Student_id INT,
-- 	Name VARCHAR(20) NOT NULL,
-- 	Major VARCHAR(20) DEFAULT 'Undecided' --UNIQUE,
-- 	PRIMARY KEY(Student_id)
-- );

-- DESCRIBE TABLE
-- EXEC sp_help 'dbo.StudentInformation';  

--ADD Another Column 
--ALTER TABLE StudentInformation ADD Gpa DECIMAL(3, 2);

--DROP COLUMN 
--ALTER TABLE StudentInformation DROP COLUMN Gpa;

-- drop a foriegn key in MSSQL
-- ALTER TABLE Branch
-- DROP CONSTRAINT FK__Branch__mgr_id__382F5661;

--#INSERTING DATA
-- INSERT INTO StudentInformation VALUES(1, 'Jack', 'Biology');
-- INSERT INTO StudentInformation VALUES(2, 'Kate', 'Sociology');
-- INSERT INTO StudentInformation VALUES(3, 'Claire', 'Chemistry');
-- INSERT INTO StudentInformation VALUES(4, 'Billy', 'Biology');
-- INSERT INTO StudentInformation VALUES(5, 'Mike', 'Computer Science');


--# UPDATE 
-- UPDATE StudentInformation
-- SET Major = 'Bio'
-- WHERE Student_id = 4;

--#OR
--UPDATE StudentInformation
--SET Major = 'Biochemistry'
--WHERE Student_id = 4 OR Major = 'Chemistry';

--# DELETE Information in the database
--DELETE FROM StudentInformation
--WHERE Student_id = 4;

--# Basic QUERIES  <, >, <>, >=, <=, AND OR
-- SELECT *
-- FROM StudentInformation;

-- SELECT Name, Major
-- FROM StudentInformation;

-- SELECT *
-- FROM StudentInformation
-- ORDER BY Name DESC -- ASC
-- ;

-- SELECT *
-- FROM StudentInformation
-- ORDER BY Major, Student_id ASC  -- DESC
-- ;

-- SELECT *
-- FROM StudentInformation
-- ORDER BY Student_id DESC
-- LIMIT 2
-- ;

-- SELECT Name, Major
-- FROM StudentInformation
-- WHERE Major = 'Biology'
-- ;

-- SELECT Name, Major
-- FROM StudentInformation
-- WHERE Major = 'Biology' OR Name = 'Billy'
-- ;

-- SELECT *
-- FROM StudentInformation
-- WHERE Student_id < 3
-- ;

-- SELECT *
-- FROM StudentInformation
-- WHERE Student_id <= 3 AND Name <> 'Jack'
-- ;

-- SELECT *
-- FROM StudentInformation
-- WHERE Name IN ('Claire', 'Kate', 'Mike')
-- ;

-- SELECT *
-- FROM StudentInformation
-- WHERE Name IN ('Claire', 'Kate', 'Mike') AND Student_id > 2
-- ;

-- -- How to check foreign keys MSSQL
-- SELECT * FROM sys.key_constraints;






























































































































































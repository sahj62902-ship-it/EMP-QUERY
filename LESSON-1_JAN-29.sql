--LESSON-1
--TABLE CREATION
CREATE TABLE EMP
(
EMPNO VARCHAR(5) PRIMARY KEY,
ENAME VARCHAR(10),
DEPT VARCHAR(5),
DESIG VARCHAR(6),
BASIC INT
);

--RECORD INSERTION
INSERT INTO EMP VALUES
('A001', 'BHASKAR', 'ACCT', 'MGR', 6000),
('A002', 'SUMITA', 'MKTG', 'EXEC', 4500),
('A003', 'ASHOK', 'PERS', 'ASST', 4000),
('A004', 'ANAND', 'TECH', 'MGR', 4500);

--QUERY

--1. Display all the records.
SELECT * FROM EMP;

--2. Display all the record except Record No. 
SELECT ENAME,DEPT,DESIG,BASIC FROM EMP;

--3. Add two new record to the above created file 
--a. A005 ANIL  TECH  MGR  4500 
--b. A006 SANJAY PERS  EXEC  5000
INSERT INTO EMP VALUES
('A005', 'ANIL', 'TECH', 'MGR', 4500),
('A006', 'SANJAY', 'PERS', 'EXEC', 5000);

--4. Display the record of only NAME AND DEPT field. 
SELECT ENAME,DEPT FROM EMP;

--5. Display only the 4th record.
SELECT * FROM EMP WHERE EMPNO='A004';

--6. Display the record only name starting with 'A'. 
SELECT * FROM EMP WHERE ENAME LIKE 'A%';

--7. Display the record only those persons whose basic is greater than 5000. 
SELECT * FROM EMP WHERE BASIC>5000;

--8. Display the record only EMPNO is 3 and 6.
SELECT * FROM EMP WHERE EMPNO IN('A003','A006');
--OR--
SELECT * FROM EMP WHERE EMPNO='A003' OR EMPNO='A006';

--9. Display the record of those employee whose designation is 'EXEC' and basic is greater than 4500. 
SELECT * FROM EMP WHERE DESIG='EXEC' AND BASIC>4500;
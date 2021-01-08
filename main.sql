/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
CREATE TABLE Employee(
code CHAR(2) PRIMARY KEY,
name VARCHAR(20),
dob DATE,
designation VARCHAR(20),
salary int
);
INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('01','abhi','03-01-1994','MD',70000),
('02','simran','05-03-1995','MANAGER',35000),
('03','anu','10-12-1999','CLERK',25000),
('04','darshan','30-06-1995','AUDITOR',50000);

SELECT * FROM Employee ORDER BY name DESC;

CREATE TABLE Deposit(
baccno BIGINT,
branch_name VARCHAR(60),
amount int
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(201001,'chenganur',400000),
(201002,'thiruvalla',350000),
(201003,'alappuzha',420000),
(201004,'kottayam',234000),
(201005,'ernakulam',704000);

SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
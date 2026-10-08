/*
===============================================================================
LeetCode SQL 50
Question No : 006
Problem Name: Replace Employee ID With The Unique Identifier
LeetCode ID : 1378
Difficulty  : Easy

Concepts Used:
- SELECT
- LEFT JOIN
- JOIN
- NULL handling

MySQL
===============================================================================
*/

DROP TABLE IF EXISTS EmployeeUNI;
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT
);

INSERT INTO Employees (id, name)
VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

INSERT INTO EmployeeUNI (id, unique_id)
VALUES
    (3, 1),
    (11, 2),
    (90, 3);

SELECT *
FROM Employees;

SELECT *
FROM EmployeeUNI;

SELECT
    eu.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
    ON e.id = eu.id;
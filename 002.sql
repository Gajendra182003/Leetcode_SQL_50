/*
===============================================================================
LeetCode SQL 50
Question No : 002
Problem Name: Find Customer Referee
LeetCode ID : 584
Difficulty  : Easy

Concepts Used:
- SELECT
- WHERE
- IS NULL
- != / <>

PostgreSQL
===============================================================================
*/

DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    referee_id INT
);

INSERT INTO Customer (id, name, referee_id)
VALUES
    (1, 'Will', NULL),
    (2, 'Jane', NULL),
    (3, 'Alex', 2),
    (4, 'Bill', NULL),
    (5, 'Zack', 1),
    (6, 'Mark', 2);

SELECT *
FROM Customer;

SELECT
    name
FROM Customer
WHERE referee_id <> 2
   OR referee_id IS NULL;
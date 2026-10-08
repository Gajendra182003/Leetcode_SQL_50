/*
===============================================================================
LeetCode SQL 50
Question No : 008
Problem Name: Customer Who Visited but Did Not Make Any Transactions
LeetCode ID : 1581
Difficulty  : Easy

Concepts Used:
- LEFT JOIN
- IS NULL
- GROUP BY
- COUNT()

PostgreSQL
===============================================================================
*/

DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Visits;

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount INT
);

INSERT INTO Visits (visit_id, customer_id)
VALUES
    (1, 23),
    (2, 9),
    (4, 30),
    (5, 54),
    (6, 96),
    (7, 54),
    (8, 54);

INSERT INTO Transactions (transaction_id, visit_id, amount)
VALUES
    (2, 5, 310),
    (3, 5, 300),
    (9, 5, 200),
    (10, 4, 910),
    (13, 6, 600);

SELECT *
FROM Visits;

SELECT *
FROM Transactions;

SELECT
    v.customer_id,
    COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
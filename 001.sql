/*
===============================================================================
LeetCode SQL 50
Question No : 001
Problem Name: Recyclable and Low Fat Products
Difficulty  : Easy
Platform    : LeetCode

Concepts Used:
- SELECT
- WHERE
- Logical Operator (AND)

PostgreSQL Version: PostgreSQL 16+

Author: Gajendra Rathod
GitHub: https://github.com/Gajendra182003

===============================================================================
Problem Statement

Write a solution to find the ids of products that are both low fat
and recyclable.

Expected Output

+------------+
| product_id |
+------------+
|     1      |
|     3      |
+------------+

===============================================================================
*/

------------------------------------------------------------
-- STEP 1: Drop Existing Table
------------------------------------------------------------

DROP TABLE IF EXISTS Products;

------------------------------------------------------------
-- STEP 2: Create Table
------------------------------------------------------------

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    low_fats CHAR(1),
    recyclable CHAR(1)
);

------------------------------------------------------------
-- STEP 3: Insert Sample Data
------------------------------------------------------------

INSERT INTO Products (product_id, low_fats, recyclable)
VALUES
    (0, 'Y', 'N'),
    (1, 'Y', 'Y'),
    (2, 'N', 'Y'),
    (3, 'Y', 'Y'),
    (4, 'N', 'N');

------------------------------------------------------------
-- STEP 4: Verify Dataset (Optional)
------------------------------------------------------------

SELECT *
FROM Products;

------------------------------------------------------------
-- STEP 5: Solution
------------------------------------------------------------

SELECT
    product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';

------------------------------------------------------------
-- END
------------------------------------------------------------
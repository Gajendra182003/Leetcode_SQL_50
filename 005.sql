/*
===============================================================================
LeetCode SQL 50
Question No : 005
Problem Name: Invalid Tweets
LeetCode ID : 1683
Difficulty  : Easy

Concepts Used:
- SELECT
- WHERE
- LENGTH()

MySQL
===============================================================================
*/

DROP TABLE IF EXISTS Tweets;

CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR(255)
);

INSERT INTO Tweets (tweet_id, content)
VALUES
    (1, 'Let us Code'),
    (2, 'More than fifteen chars are here');

SELECT *
FROM Tweets;

SELECT
    tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
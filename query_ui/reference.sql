-- SHOW DATABASES (MySQL)
SHOW DATABASES;

-- CREATE DATABASE
CREATE DATABASE mydatabase;

-- CREATE TABLE
CREATE TABLE mytable (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age INT NOT NULL,
) -- CREATE A TABLE WITH A FOREIGN KEY
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
) -- SHOW DATA AND RECORDS
SELECT
    *
FROM
    mytable;

-- SHOW SPECIFIC FIELDS OF ALL RECORDS
SELECT
    username,
    email
FROM
    mytable;

--------------------
--- USE OF WHERE ---
--------------------
-- SHOW ALL RECORDS WITH A CONDITION (<, =, >, !=)
SELECT
    *
FROM
    mytable
WHERE
    username = 'myusername';

-- SHOW ALL RECORDS WITH MORE THAN ONE CONDITION (<, =, >, !=)
SELECT
    *
FROM
    mytable
WHERE
    username = 'myusername'
    AND email != "user@email.com";

-- FILTER MORE THAN ONE MATCH
SELECT
    *
FROM
    mytable
WHERE
    id IN (1, 3, 5);

-- SHOW RECORDS WHERE THE CONDITION IS A RANGE
SELECT
    *
FROM
    mytable
WHERE
    age BETWEEN 18
    AND 65;

-- SHOW RECORDS WHERE THE FIELD VALUE STARTS WITH A SPECIFIC CHARACTER(S)
SELECT
    *
FROM
    mytable
WHERE
    username LIKE 'my%';

-- SHOW RECORDS WHERE THE FIELD VALUE ENDS WITH A SPECIFIC CHARACTER(S)
SELECT
    *
FROM
    mytable
WHERE
    username LIKE '%my';

-- SHOW RECORDS WHERE THE FIELD VALUE INCLUDES A SPECIFIC CHARACTER(S)
SELECT
    *
FROM
    mytable
WHERE
    username LIKE '%my%';

-- COMBINE MULTIPLE CONDITIONS AND RETURN RECORDS THAT MEET AT LEAST ONE OF THEM
SELECT
    *
FROM
    mytable
WHERE
    username = 'myusername'
    OR email = "user@email.com";

-- COMPARE AND SHOW A VALUE WITH NULL OR A BOOLEAN VALUE (TRUE OR FALSE).
SELECT
    *
FROM
    mytable
WHERE
    age IS NULL
    OR is_active = TRUE;

-- EXCLUDE RECORDS WHOSE VALUES MATCH ANY VALUE IN A SPECIFIED LIST
SELECT
    *
FROM
    mytable
WHERE
    username NOT IN ('myusername', 'otherusername');

-----------------------------------------------------------------------------------------------------------------------------
-- NOTE: When performing a filter with WHERE, it is not necessary to display the field used for the condition with SELECT. --
-----------------------------------------------------------------------------------------------------------------------------
-- CREATE A NEW RECORD
INSERT INTO
    mytable (username, email, age)
VALUES
    ('johnDoe', 'johndoe@domain.com', 32);

-- UPDATE ALL RECORDS
UPDATE
    mytable
SET
    username = 'janeDoe',
    email = 'janedoe@domain.com';

-- UPDATE SPECIFIC RECORD
UPDATE
    mytable
SET
    username = 'janeDoe',
    email = 'janedoe@domain.com'
WHERE
    id = 1;

-- DELETE ALL RECORD
DELETE FROM
    mytable;

-- DELETE SPECIFIC RECORD
DELETE FROM
    mytable
WHERE
    id = 1;

-- HAVING COUNT
-- SUM, MIN, AVG
-- AS
-- GROUP BY
-- ORDER BY
-- JOINS
-- INDEX
-- TRIGGER
-- ETL
-- CTE
-- SUBQUERYS
-- STORED PROCEDURES
-- VIEWS
-- GRANT AND REVOKE
-- ETL AND ELT
-- 5V
-- ARQUITECTURA DE DATOS
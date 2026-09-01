-- CIT 406 Module 1 Assignment 1

-- 1. Confirm PostgreSQL version
SELECT version();

-- 2. Create first table
CREATE TABLE hello_cit406 (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now()
);

-- 3. Insert student
INSERT INTO hello_cit406 (student)
VALUES ('Your Full Name');

-- 4. Read the table
SELECT * FROM hello_cit406;

-- create_tables.sql
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    salary NUMBER(10, 2),
    hire_date DATE,
    department_id NUMBER REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Software Engineering');
INSERT INTO departments VALUES (20, 'Data Engineering');
INSERT INTO departments VALUES (30, 'Information Management');

INSERT INTO employees VALUES (101, 'Eric', 'Maniraguha', 5000, TO_DATE('2020-01-15', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (102, 'Alice', 'Umutoni', 3000, TO_DATE('2022-06-01', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (103, 'Bonheur', 'Kwizera', 2900, TO_DATE('2019-04-20', 'YYYY-MM-DD'), 30);
INSERT INTO employees VALUES (104, 'Justin', 'Cyubahiro', 5500, TO_DATE('2024-10-11', 'YYYY-MM-DD'), 20);
COMMIT;
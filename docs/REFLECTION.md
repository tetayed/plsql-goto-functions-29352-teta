# Reflection 


## 1. What did I learn about GOTO?
GOTO jumps to a label. It can jump to a label in the same block or out of a
block, but never INTO an IF, LOOP or inner block (error PLS-00375). A label
must be followed by a statement, so I used `NULL;` at the end of a loop.

## 2. Why is GOTO usually avoided?
Too many jumps make the code hard to read and hard to fix ("spaghetti code").
In A4, `IF/ELSIF`, `CASE` and `CONTINUE` did the same job and were clearer.
GOTO can still be fine for one simple exit point, like in `fn_validate_payroll`.

## 3. What did I learn about functions?
A function always RETURNS one value. I can call it in PL/SQL and in SQL
(SELECT, WHERE, ORDER BY). It helps me reuse logic instead of repeating it.

## 4. Exception handling
I used `NO_DATA_FOUND` in `fn_dept_name` and `RAISE_APPLICATION_ERROR` for bad
input (negative salary, future hire date). In `fn_validate_payroll` I return a
message instead of crashing, so a SELECT on many rows still works.

## 5. What was difficult?
The difficult part was to find the reason why GOTO 

## 6. What did I Gain?
 The Assignment Was rich in experience you can gain in real world data analysts fields and thankfully
 to have it as hands-on practice was great.
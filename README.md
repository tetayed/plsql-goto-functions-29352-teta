# PL/SQL Assignment III: GOTO, Functions, and Payroll Validation

**Course:** Database Development with PL/SQL (INSY 8311)  
**Instructor:** Eric Maniraguha  
**Student:** Teta Yedidia - ID: 29352  
**Assignment:** Individual Assignment III

## Overview
This project is a practical PL/SQL assignment built around a small HR database with `departments` and `employees` tables. It focuses on core PL/SQL concepts such as:

- `GOTO` statements and control flow
- Stored functions and reusable business logic
- Exception handling
- Calling functions inside SQL statements
- Validating payroll data with clear output messages

The assignment combines both theoretical learning and hands-on execution in Oracle SQL tools like SQL*Plus and SQL Developer.

## Project purpose
The main goal was to practice writing procedural database logic using SQL and PL/SQL while working with realistic employee and department data. The project covers both basic logic exercises and functional payroll-related rules, including salary review, tax calculation, service years, department lookup, and payroll validation.

## Repository structure
| Folder | Contents |
|---|---|
| `00_setup/` | `create_tables.sql` creates the database schema and inserts sample data |
| `01_goto/` | A1-A4: classification logic, salary review, illegal `GOTO` example, and a corrected version without `GOTO` |
| `02_functions/` | B1-B4 and C1: annual salary, years of service, tax, department name, and payroll validation functions |
| `03_tests/` | Validation scripts including B5 function-in-SELECT tests and payroll checks |
| `docs/` | Reflection notes and learning summary |
| `screenshots/` | Evidence/output screenshots for each task |

## What is implemented
### GOTO exercises
- `A1_number_classified.sql` - classifies a number based on defined ranges
- `A2_salary_review.sql` - evaluates salary level using conditional review logic
- `A3_illegal_goto.sql` - demonstrates an invalid `GOTO` structure and its compilation issue
- `A4_rewrite_no_goto.sql` - rewrites the logic in a cleaner structure without `GOTO`

### Function-based logic
- `B1_fn_annual_salary.sql` - computes annual salary from monthly pay
- `B2_fn_years_of_service.sql` - calculates employee tenure in years
- `B3_fn_calculate_tax.sql` - calculates a simplified tax value
- `B4_fn_dept_name.sql` - fetches the department name from an employee record
- `C1_fn_validate_payroll.sql` - validates whether payroll data is acceptable

### Tests and verification
- `B5_functions_in_select.sql` - demonstrates using functions inside `SELECT` queries
- `test_functions.sql` - verifies the created functions
- `test_validate_payroll.sql` - checks payroll validation behavior

## How to run the project
1. Open Oracle SQL*Plus or SQL Developer.
2. Execute the setup script: `00_setup/create_tables.sql`
3. Compile the functions in `02_functions/` in the recommended order:
   - `B1_fn_annual_salary.sql`
   - `B2_fn_years_of_service.sql`
   - `B3_fn_calculate_tax.sql`
   - `B4_fn_dept_name.sql`
   - `C1_fn_validate_payroll.sql`
4. Run the `GOTO` exercises in `01_goto/` from A1 to A4.
5. Execute the test files in `03_tests/`.
6. Compare the outputs with the screenshots stored in `screenshots/`.

## Assumptions and constraints
- Salary review categories and tax bands are simplified rules defined by the assignment logic.
- Monetary values are in RWF.
- `fn_validate_payroll` returns validation results such as `VALID` or `INVALID: <reason>`.
- The project uses the sample employee records inserted during setup.


## Reflection
A summary of the learning experience is available in [docs/REFLECTION.md](docs/REFLECTION.md).

## Notes
I used an AI assistant to help draft some SQL logic and clarify key PL/SQL concepts, but I executed and reviewed each script in Oracle myself to verify the results and document the outputs.

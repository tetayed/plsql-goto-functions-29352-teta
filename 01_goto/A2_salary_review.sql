DECLARE
    v_salary NUMBER := 4500;
BEGIN
    IF v_salary >= 5000 THEN GOTO high_sal;
    ELSE GOTO low_sal;
    END IF;

    <<high_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - Executive Band');
    GOTO exit_block;

    <<low_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - Standard Band');

    <<exit_block>>
    NULL;
END;
/
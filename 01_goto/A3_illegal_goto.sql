-- ILLEGAL CODE (Commented out):
-- BEGIN
--     GOTO inner_label; -- Error: Cannot jump into an IF statement
--     IF 1=1 THEN
--         <<inner_label>>
--         DBMS_OUTPUT.PUT_LINE('Inside IF');
--     END IF;
-- END;

-- CORRECTED FIX:
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    IF v_flag THEN
        DBMS_OUTPUT.PUT_LINE('Corrected structure without illegal GOTO jump.');
    END IF;
END;
/
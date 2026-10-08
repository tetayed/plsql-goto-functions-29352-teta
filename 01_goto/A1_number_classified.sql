SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER := -20;
BEGIN
    IF v_num > 0 THEN GOTO pos_label;
    ELSIF v_num < 0 THEN GOTO neg_label;
    ELSE GOTO zero_label;
    END IF;

    <<pos_label>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is Positive');
    GOTO end_label;

    <<neg_label>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is Negative');
    GOTO end_label;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is Zero');

    <<end_label>>
    NULL;
END;
/
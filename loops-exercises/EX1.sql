SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    v_tabuada NUMBER(8,2) := &v_tabuada;
    v_contador NUMBER(2) := 1;
    BEGIN
        FOR v_contador IN 1..10 LOOP
            DBMS_OUTPUT.PUT_LINE(v_tabuada || ' X ' || v_contador || ' = '|| v_tabuada * v_contador);
        END LOOP;
    END;
    
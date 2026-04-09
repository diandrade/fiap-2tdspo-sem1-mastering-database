SELECT ID, RAZAO_SOCIAL FROM CLIENTE;

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    v_id NUMBER(8);
    v_razao VARCHAR (100);
    CURSOR cur_cliente IS SELECT ID, RAZAO_SOCIAL FROM CLIENTE;
BEGIN
    OPEN cur_cliente;
    LOOP
        FETCH cur_cliente INTO v_id, v_razao;
    EXIT WHEN cur_cliente%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('ID = '|| v_id || ', Razao = ' || v_razao);
    END LOOP;
END;
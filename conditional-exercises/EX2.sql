set serveroutput on
set verify off

DECLARE
    v_sexo CHAR(1) := upper('&u_sexo');
    BEGIN
    IF v_sexo = 'M' THEN
        DBMS_OUTPUT.PUT_LINE('O sexo da pessoa é: Masculino');
    ELSIF v_sexo = 'F' THEN
        DBMS_OUTPUT.PUT_LINE('O sexo da pessoa é: Feminino');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O sexo da pessoa é: Outro');
    END IF;
END;


    
    
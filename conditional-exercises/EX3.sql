/*
Crie um bloco PL/SQL que verifique se um ano informado é bissexto. 
Um ano é bissexto se for divisível por 4, mas não divisível por 100, 
a menos que também seja divisível por 400.
*/

set serveroutput on
set verify off

DECLARE
    ano number (4) := &input;
    BEGIN
    IF MOD(ano, 4) = 0 THEN
        IF NOT MOD(ano, 100) = 0 OR MOD(ano, 400) = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Ano Bissexto.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Ano Regular.');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Ano Regular.');
    END IF;
END;
            
    
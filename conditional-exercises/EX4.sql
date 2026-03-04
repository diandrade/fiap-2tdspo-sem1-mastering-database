/*
Crie um bloco PL/SQL que receba dois números e compare:
Se o primeiro número for maior que o segundo, exiba "Maior".
Se o primeiro número for menor que o segundo, exiba "Menor".
Se forem iguais, exiba "Igual".
*/

set serveroutput on
set verify off

DECLARE
    num_1 number (7) := &input1;
    num_2 num_1%type := &input2;
    BEGIN
        IF num_1 > num_2 THEN
            DBMS_OUTPUT.PUT_LINE('Maior');
        ELSIF num_1 < num_2 THEN
            DBMS_OUTPUT.PUT_LINE('Menor');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Igual');
        END IF;
    END;
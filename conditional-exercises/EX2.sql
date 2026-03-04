/*
Crie um bloco PL/SQL que avalie a idade de uma pessoa e determine se ela é criança,
adolescente, adulto ou idoso. Considere as faixas etárias:
-Criança: 0 a 12 anos
-Adolescente: 13 a 17 anos
-Adulto: 18 a 64 anos
-Idoso: 65 anos ou mais
*/

set serveroutput on
set verify off

DECLARE
    idade number(3) := &u_input;
    BEGIN
        IF idade < 0 THEN
            DBMS_OUTPUT.PUT_LINE('Idade Negativa Não Válida.');
        ELSIF idade <= 12 THEN
            DBMS_OUTPUT.PUT_LINE('Criança: 0 a 12 anos');
        ELSIF idade <= 17 THEN
            DBMS_OUTPUT.PUT_LINE('13 a 17 anos');
        ELSIF idade <= 64 THEN
            DBMS_OUTPUT.PUT_LINE('Adulto: 18 a 64 anos');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Idoso: 65 anos ou mais');
        END IF;
    END;
        
    


    
    
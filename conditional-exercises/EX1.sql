/*
Lista de exercícios If:
Crie um bloco anônimo PL/SQL que verifique se um número fornecido é positivo, 
negativo ou zero. Exiba uma mensagem apropriada usando a estrutura IF.
Exemplo de Saída:
"Número positivo"
"Número negativo"
"Número é zero"
*/

set serveroutput on
set verify off

DECLARE
    v_num number(8, 2) := &u_input;
    BEGIN
        IF v_num < 0 THEN
            DBMS_OUTPUT.PUT_LINE('Negativo.');
        ELSIF v_num = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Neutro.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Positivo.');
        END IF;
    END;
            

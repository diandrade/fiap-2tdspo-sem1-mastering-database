/*Crie um bloco PL/SQL que simule uma calculadora básica, realizando a operação indicada pelo usuário:
Se o operador for  +, realize uma soma.
Se o operador for  -, realize uma subtração.
Se o operador for  *, realize uma multiplicação.
Se o operador for  ", realize uma divisão.*/

set serveroutput on
set verify off

DECLARE
    u_op CHAR(1) := '&op';
    u_valor1 NUMBER(8, 2) := &v_1;
    u_valor2 u_valor1%type := &v_2;
    res u_valor1%type;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('********** Calculadora **********');
        DBMS_OUTPUT.PUT_LINE('+ = Soma');
        DBMS_OUTPUT.PUT_LINE('- = Subtração');
        DBMS_OUTPUT.PUT_LINE('/ = Divisão');
        DBMS_OUTPUT.PUT_LINE('* = Multiplicação');
        IF u_op = '+' THEN
            res := UTL_LMS.FORMAT_MESSAGE('A soma de %d e %d é %d', u_valor1, u_valor2, u_valor1 + u_valor2);
            DBMS_OUTPUT.PUT_LINE(res);
        ELSIF u_op = '-' THEN
            res := UTL_LMS.FORMAT_MESSAGE('A subtração de %d e %d é %d', u_valor1, u_valor2, u_valor1 - u_valor2);
            DBMS_OUTPUT.PUT_LINE(res);
        ELSIF u_op = '*' THEN
            res := UTL_LMS.FORMAT_MESSAGE('A multiplicação de %d e %d é %d', u_valor1, u_valor2, u_valor1 * u_valor2);
            DBMS_OUTPUT.PUT_LINE(res);
        ELSIF u_op = '/' THEN
            res := UTL_LMS.FORMAT_MESSAGE('A divisão de %d e %d é %d', u_valor1, u_valor2, u_valor1 * u_valor2);
            DBMS_OUTPUT.PUT_LINE(res);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Insira um caráctere válido.');
        END IF;
    END;
            
    

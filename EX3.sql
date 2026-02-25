set serveroutput on

Declare
    v_cambio number (8,2) := &valor1;
    q_dolares v_cambio%type := &valor2;
    v_conversao v_cambio%type;
    begin
    v_conversao := q_dolares * v_cambio;
    dbms_output.put_line('O valor da conversão cambial será de: ' || v_conversao);
    end;
set serveroutput on
set verify off

Declare
    v_cambio number (8,2) := &valor1;
    v_conversao v_cambio%type;
    begin
    v_conversao := 45 * v_cambio;
    dbms_output.put_line('O valor da conversão cambial será de: ' || v_conversao);
    end;
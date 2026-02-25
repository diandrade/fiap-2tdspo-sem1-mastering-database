set serveroutput on
set verify off

Declare
    v_carro number (8,2) := &valor1;
    v_parcela v_carro%type;
    begin
    v_parcela := v_carro / 10 * 1.03;
    dbms_output.put_line('O valor total de cada percela será de: ' || v_parcela);
    end;
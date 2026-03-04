set serveroutput on
set verify off

Declare
    v_carro number (8,2) := &valor1;
    v_parcela_1 v_carro%type;
    v_parcela_2 v_carro%type;
    v_parcela_3 v_carro%type;
    begin
    v_parcela_1 := v_carro * 0.80 / 6 * 1.10;
    v_parcela_2 := v_carro * 0.80 / 12 * 1.15;
    v_parcela_3 := v_carro * 0.80 / 18 * 1.20;
    dbms_output.put_line('O valor total de 6 parcelas será de: ' || v_parcela_1);
    dbms_output.put_line('O valor total de 12 parcelas será de: ' || v_parcela_2);
    dbms_output.put_line('O valor total de 18 parcelas será de: ' || v_parcela_3);
    end;
set serveroutput on
set verify off

Declare
    s_atual number (8,2) := &valor1;
    n_salario s_atual%type;
    begin
    n_salario := s_atual * 1.25;
    dbms_output.put_line('O valor do novo salário mínimo será de: ' || n_salario);
    end;
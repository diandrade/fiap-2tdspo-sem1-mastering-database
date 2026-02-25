set serveroutput on
set verify off

begin
    dbms_output.put_line(37);
    end;
    
Declare
    v_n1 number(4, 2) := 10;
    v_n2 string(20) := 'Isso é FIAP.';
    begin
    dbms_output.put_line(v_n1 || ' - ' || v_n2);
    end;
    
Declare
    v_n1 number(8, 2) := &valor1;
    v_n2 v_n1%type := &valor2;
    v_n3 v_n1%type;
    begin
    v_n3 := v_n1 + v_n2;
    dbms_output.put_line('A soma dos valores é: ' || v_n3);
    end;
    
Declare
    v_n1 number(8, 2) := &valor1;
    v_n2 v_n1%type := &valor2;
    v_n3 v_n1%type := &valor3;
    v_n4 v_n1%type := &valor4;
    media v_n1%type;
    begin
    media := (v_n1 + v_n2 + v_n3 + v_n4) / 4;
    dbms_output.put_line('A media dos valores é: ' || media);
    end;
    

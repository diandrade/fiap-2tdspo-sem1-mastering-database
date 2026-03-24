SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
    v_contador_pares NUMBER(2) := 0;
    v_contador_impares NUMBER(2) := 0;
    v_soma_pares NUMBER(8,2) := 0;
    v_soma_impares NUMBER(8,2) := 0;
    v_media_pares NUMBER(8,2) := 0;
    v_comeco NUMBER(8,2) := &v_comeco;
    v_final NUMBER(8,2) := &v_final;
    
    BEGIN
        FOR v_contador IN v_comeco..v_final LOOP
            DBMS_OUTPUT.PUT_LINE(v_contador);
            IF MOD(v_contador, 2) = 0 THEN
                v_contador_pares := v_contador_pares + 1;
                v_soma_pares := v_soma_pares + v_contador;
            ELSE
                v_contador_impares := v_contador_impares + 1;
                v_soma_impares := v_soma_impares + v_contador;
            END IF;
        END LOOP;
        v_media_pares := v_soma_pares / v_contador_pares;
        
        DBMS_OUTPUT.PUT_LINE('A média dos números pares é: ' || v_media_pares);
        DBMS_OUTPUT.PUT_LINE('A soma dos números ímpares é: ' || v_soma_impares);
    END;
    
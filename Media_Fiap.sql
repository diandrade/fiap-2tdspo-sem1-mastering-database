CREATE TABLE BOLETIM (
    rm NUMBER(3) NOT NULL,
    cd_disc NUMBER(3) NOT NULL,
    nm_disc VARCHAR2(30) NOT NULL,
    c_hora NUMBER(3) NOT NULL,
    cp1 NUMBER(4,2),
    cp2 NUMBER(4,2),
    cp3 NUMBER(4,2),
    media NUMBER(4,2),
    faltas NUMBER(3),
    situacao VARCHAR2(50)
);

set serveroutput on
set verify off

DECLARE
    v_media NUMBER(4,2);
    v_cp1 v_media%type;
    v_cp2 v_media%type;
    v_cp3 v_media%type;
    v_faltas v_media%type;
    v_carga_horaria v_media%type;
    l_carga_horaria v_media%type;
    BEGIN
        INSERT INTO BOLETIM(rm, cd_disc, nm_disc, c_hora, cp1, cp2, cp3, faltas) 
        VALUES(566, 070, 'Diego Andrade', 360, 9, 6, 8, 5);
        
        SELECT cp1, cp2, cp3, c_hora 
        INTO v_resultado1, v_resultado2, v_resultado3, v_resultado4
        FROM BOLETIM
        WHERE cp1 = v_cp1 
        AND cp2 = v_cp2 
        AND cp3 = v_cp3
        AND c_hora = v_carga_horaria;
        l_carga_horaria := v_carga_horaria * 0.25;
        
        IF v_cp1 < v_cp2 AND v_cp1 < v_cp3 THEN:
            v_media := (v_cp2 + v_cp3) / 2;
        ELSIF v_cp2 < v_cp1 AND v_cp2 < v_cp3 THEN:
            v_media := (v_cp1 + v_cp3) / 2;
        ELSE
            v_media := (v_cp1 + v_cp2) / 2;
        END IF;
        
        IF v_media >= 6 AND v_faltas < l_carga_horaria THEN
            DBMS_OUTPUT.PUT_LINE('Aprovado.');
        ELSIF v_media >= 6 AND v_faltas >= l_carga_horaria THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por faltas.');
        ELSIF v_media >= 4 AND v_media < 6 AND v_faltas < l_carga_horaria THEN
            DBMS_OUTPUT.PUT_LINE('Exame.'); 
        ELSIF v_media < 4 AND v_faltas < l_carga_horaria THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por nota.'); 
        ELSIF v_media < 4 AND v_faltas >= l_carga_horaria THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por nota e faltas.'); 
        END IF;
    END;    
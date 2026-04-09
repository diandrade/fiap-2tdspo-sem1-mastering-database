SELECT * FROM FUNCIONARIO;
SELECT nm_fun, salario FROM FUNCIONARIO;

CREATE TABLE FUNCIONARIO(
    cd_fun NUMBER(2) PRIMARY KEY,
    nm_fun VARCHAR2(100),
    salario NUMBER(8,2),
    dt_adm DATE
)

INSERT INTO FUNCIONARIO VALUES (1, 'Diego Andrade', 1500, '10-APR-2002');
INSERT INTO FUNCIONARIO VALUES (2, 'Marcel Castro', 10000, '21-MAY-2001');
INSERT INTO FUNCIONARIO VALUES (3, 'Claudia Santos', 16000, '02-JUN-1999');
INSERT INTO FUNCIONARIO VALUES (4, 'Joaquim Well', 5500, '16-DEC-2008');
INSERT INTO FUNCIONARIO VALUES (5, 'Valéria Oliveira', 7300, '05-NOV-1986');

/*
---------- VISUALIZAR INFO FUNCIONARIO ----------

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
    CURSOR c_func IS SELECT nm_fun, salario FROM FUNCIONARIO;
    BEGIN
        FOR v_func IN c_func LOOP
            DBMS_OUTPUT.PUT_LINE('');
            DBMS_OUTPUT.PUT_LINE('O nome do funcionario e: ' || v_func.nm_fun);
            DBMS_OUTPUT.PUT_LINE('O salario do funcionario e: ' || v_func.salario);
        END LOOP;
    END;
*/
    
ALTER TABLE FUNCIONARIO ADD data_inicio DATE;
ALTER TABLE FUNCIONARIO ADD tempo_trabalhado NUMBER(5);

UPDATE FUNCIONARIO SET data_inicio = '01-MAR-2023' WHERE cd_fun = 1;Ã
UPDATE FUNCIONARIO SET data_inicio = '15-APR-2024' WHERE cd_fun = 2;
UPDATE FUNCIONARIO SET data_inicio = '20-NOV-2021' WHERE cd_fun = 3;
UPDATE FUNCIONARIO SET data_inicio = '30-OCT-2025' WHERE cd_fun = 4;
UPDATE FUNCIONARIO SET data_inicio = '05-FEB-2022' WHERE cd_fun = 5;

ALTER TABLE FUNCIONARIO 
RENAME COLUMN dt_adm TO dt_Nasc;

/*
---------- CALCULAR TEMPO DE TRABALHO ---------- 

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
    CURSOR c_func IS SELECT cd_fun, data_inicio FROM FUNCIONARIO;
    BEGIN
        FOR v_func IN c_func LOOP
            UPDATE FUNCIONARIO 
            SET tempo_trabalhado = SYSDATE - v_func.data_inicio
            WHERE cd_fun = v_func.cd_fun;
        END LOOP;
    END;
*/

SELECT * FROM FUNCIONARIO;
SELECT nm_fun, salario FROM FUNCIONARIO;

/*
---------- ATUALIZAR SALARIOS ----------

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
    v_tempo_meses NUMBER(6,2);
    CURSOR c_func IS SELECT cd_fun, salario, tempo_trabalhado FROM FUNCIONARIO;
    BEGIN
        FOR v_func IN c_func LOOP
            v_tempo_meses := v_func.tempo_trabalhado / 30;
            IF v_tempo_meses >= 150 THEN
                UPDATE FUNCIONARIO 
                SET salario = v_func.salario * 1.10  
                WHERE cd_fun = v_func.cd_fun;
            ELSE
                UPDATE FUNCIONARIO 
                SET salario = v_func.salario * 1.05 
                WHERE cd_fun = v_func.cd_fun;
            END IF;
        END LOOP;
    END;*/




ALTER TABLE FUNCIONARIO ADD (tempo NUMBER(8));

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    CURSOR c_exibe IS SELECT * FROM FUNCIONARIO;
BEGIN
    FOR v_exibe IN c_exibe LOOP
        UPDATE FUNCIONARIO SET tempo = SYSDATE - v_exibe.dt_adm
        WHERE cd_fun = v_exibe.cd_fun;
    END LOOP;
END;


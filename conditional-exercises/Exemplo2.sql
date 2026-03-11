CREATE TABLE aluno(
    rm CHAR(3),
    nome VARCHAR2(50),
    CONSTRAINT aluno_pf PRIMARY KEY(rm)
);

INSERT INTO ALUNO(RM, NOME) VALUES ('111', 'Antonio Alves');
INSERT INTO ALUNO(RM, NOME) VALUES ('222', 'Beatriz Bernardes');
INSERT INTO ALUNO(RM, NOME) VALUES ('333', 'Cláudio Cardoso');

set serveroutput on;
set verify off;

DECLARE
    /*SELECT -> v_rm CHAR(3) := '333';
    v_nome VARCHAR2(50);*/
    
    /*INSERT INTO -> v_rm CHAR(3) := '444';
    v_nome VARCHAR2(50) := 'Daniela Dorneles';*/
    
    /*UPDATE -> v_rm CHAR(3) := '111';
    v_nome VARCHAR2(50) := 'Antônio Rodrigues';*/
    
    v_rm CHAR(3) := '444';
    BEGIN
        SELECT nome INTO v_nome FROM aluno WHERE rm = v_rm;
        DBMS_OUTPUT.PUT_LINE('O nome do aluno é: ' || v_nome);
        
        /*INSERT INTO ALUNO(rm, nome) VALUES (v_rm, v_nome);*/
        
        /*UPDATE aluno SET nome =  v_nome WHERE rm = v_rm;*/
        DELETE FROM aluno WHERE rm = v_rm;
    END;
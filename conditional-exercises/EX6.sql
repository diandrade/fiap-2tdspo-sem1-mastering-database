CREATE TABLE BOLETIM(
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

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    rm NUMBER(3);
    cd_disc NUMBER(3);
    nm_disc VARCHAR2(30);
    c_hora NUMBER(3);
    c_hora_min NUMBER(3);
    cp1 NUMBER(4,2);
    cp2 NUMBER(4,2);
    cp3 NUMBER(4,2);
    media NUMBER(4,2);
    faltas NUMBER(3);
    situacao VARCHAR2(50);
    
    BEGIN
        rm := &rm;
        cd_disc := &cd_disc;
        nm_disc := '&nm_disc';
        c_hora := &c_hora;
        faltas := &faltas;
        cp1:= &cp1;
        IF cp1 >= 0 AND cp1 <= 10 THEN        
            cp2 := &cp2;
            IF cp2 >= 0 AND cp2 <= 10 THEN 
                cp3 := &cp3;
                IF cp3 >= 0 AND cp3 <= 10 THEN
                    IF cp1 < cp2 AND cp1 < cp3 THEN
                        media := (cp2 + cp3) / 2;
                    ELSIF cp2 < cp1 AND cp2 < cp3 THEN
                        media := (cp1 + cp3) / 2;
                    ELSIF cp3 < cp1 AND cp3 < cp1 THEN
                        media := (cp1 + cp2) / 2;
                    END IF;
                ELSE
                    DBMS_OUTPUT.PUT_LINE('Insira um valor entre 0 e 10.');
                END IF;
            ELSE
                DBMS_OUTPUT.PUT_LINE('Insira um valor entre 0 e 10.');
            END IF;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Insira um valor entre 0 e 10.');
        END IF;
        DBMS_OUTPUT.PUT_LINE(media);
        
        c_hora_min := c_hora * 0.25;
        IF media >= 6 AND faltas < c_hora_min THEN
            DBMS_OUTPUT.PUT_LINE('Aprovado.');
            situacao := 'Aprovado.';
        ELSIF media >= 6 AND faltas >= c_hora_min THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por Faltas.');
            situacao := 'Reprovado por Faltas.';
        ELSIF media >= 4 AND media < 6 AND faltas < c_hora_min THEN
            DBMS_OUTPUT.PUT_LINE('Exame.');
            situacao := 'Exame.';
        ELSIF media < 4 AND faltas < c_hora_min THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por Nota.');
            situacao := 'Reprovado por Nota.';
        ELSE 
            DBMS_OUTPUT.PUT_LINE('Reprovado por Nota e Faltas.');
            situacao := 'Reprovado por Nota e Faltas.';
        END IF;
        
       
        INSERT INTO BOLETIM(rm, cd_disc, nm_disc, c_hora, cp1, cp2, cp3, faltas, media, situacao) 
        VALUES (rm, cd_disc, nm_disc, c_hora, cp1, cp2, cp3, faltas, media, situacao);
    END; 
    
BEGIN
    FOR i IN 1..100 LOOP						
        INSERT INTO PC_BOARD (seq, title,CONTENTS, READ_CNT,  REG_DT,REG_ID, MOD_DT, MOD_ID)
            VALUES (i,
                DBMS_RANDOM.STRING('A',5),
                DBMS_RANDOM.STRING('A',5),
                DBMS_RANDOM.VALUE(6,9999999),
                DBMS_RANDOM.VALUE(TO_CHAR(SYSDATE,'YYYY/MM/DD')),
                DBMS_RANDOM.STRING('A',5),
                DBMS_RANDOM.VALUE(TO_CHAR(SYSDATE,'YYYY/MM/DD')),
                DBMS_RANDOM.STRING('A',5));					
    END LOOP;												
END;
/

SELECT * FROM PC_BOARD;
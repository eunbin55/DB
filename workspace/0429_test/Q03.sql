


SELECT A.rnum AS num,
        A.seq,
        A.title,
        A.read_cnt,
        TO_CHAR(a.MOD_DT,'YYYY/MM/DD') MOD_DT,
        A.mod_id
FROM(
    SELECT rownum as rnum, t1.*
    FROM (
            SELECT *
            FROM PC_BOARD
            --Á¶°Ç
            ORDER BY MOD_DT DESC
        )t1
    WHERE ROWNUM <= 20
)A
WHERE rnum >=1;

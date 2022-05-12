TRUNCATE TABLE sawon;
BEGIN
    FOR i IN 1..9000 LOOP
        INSERT INTO sawon VALUES (i,
            DBMS_RANDOM.STRING('A',9),
            SYSDATE - i,
            DECODE( MOD(i,2),0,10,20)
        );
    END LOOP;
    COMMIT;
END;
/

SELECT COUNT(*) FROM sawon;

SELECT * FROM sawon;

--TOP-N
SELECT A.rnum AS num,
       A.empno,
       A.ename,
       TO_CHAR(A.hiredate,'YYYY/MM/DD') hhiredate,
       A.deptno
FROM(
    SELECT rownum as rnum, t1.*
    FROM(
        SELECT *
        FROM sawon
        --검색조건
        ORDER BY hiredate desc
    )t1
    WHERE rownum <= 20
)A
WHERE rnum >= 11
;
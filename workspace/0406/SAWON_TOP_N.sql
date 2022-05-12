SELECT *
FROM sawon;

TRUNCATE TABLE sawon;

INSERT INTO sawon

SELECT LPAD(ROWNUM, 4,0) AS empno,
      'pcwk' || LPAD(rownum,4,0) AS ename,
      sysdate - rownum AS hiredate,
      DECODE(MOD(rownum,2),0,10,20) AS deptno
FROM dual
CONNECT BY LEVEL <= 9000
;

commit;

SELECT COUNT(*) FROM sawon;

-------------------여기부터 페이징 코드----------------
SELECT tt1.rnum as num,
       tt1.empno,
       tt1.ename,
       TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
       tt1.deptno
FROM(
    SELECT ROWNUM AS rnum, t1.*
    FROM (
        SELECT *
        FROM sawon
        --검색조건
        ORDER BY hiredate DESC
    )t1
    WHERE ROWNUM <= (&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE)
)tt1
WHERE rnum >= (&PAGE_SIZE*(&PAGE_NUM-1)+1)
;
---PAGE SIZE, PAGE NUM
---시작번호, 1, 11, 21, 31, ...
--&PAGE_SIZE*(&PAGE_NUM-1)+1
---끝번호, 10, 20, 30, 40, ...
--&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE

----총 글수------
SELECT COUNT(*)
FROM sawon
--검색조건
ORDER BY hiredate DESC
;



---카티션 이용한 방법
SELECT A.*,B.*
FROM(
    SELECT tt1.rnum as num,
           tt1.empno,
           tt1.ename,
           TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
           tt1.deptno
    FROM(
        SELECT ROWNUM AS rnum, t1.*
        FROM (
            SELECT *
            FROM sawon
            --검색조건
            ORDER BY hiredate DESC
        )t1
        WHERE ROWNUM <= 10
    )tt1
    WHERE rnum >= 1
)A
CROSS JOIN
(   SELECT COUNT(*) AS total_cnt
    FROM sawon
    --검색조건
    ORDER BY hiredate DESC
)B
;
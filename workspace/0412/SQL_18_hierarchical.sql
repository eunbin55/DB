--계층형 쿼리의 기본 구조
SELECT empno,
       ename,
       job,
       mgr,
       level,
       LPAD(' ',(LEVEL-1)*2,' ')|| ename as depth_ename,
       SYS_CONNECT_BY_PATH(ename,'-') as ename_list
FROM emp
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr

--같은 level행들의 정렬 컬럼 기입
ORDER SIBLINGS BY ename
;
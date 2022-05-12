--ENAME이 JONES 이하는 계층구조를 전개하지X
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
           AND ENAME <> 'JONES' 
ORDER SIBLINGS BY ename
;
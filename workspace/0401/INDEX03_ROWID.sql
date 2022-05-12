--ROWID		
--	오라클에서 데이터(ROWID)의 주소를 주소라 표현하지 않고 ROWID라 한다.	

SELECT ROWID,
       empno,
       ename
FROM emp;

SELECT ROWID,
       empno,
       ename
FROM emp
WHERE ROWID = 'AAAR+0AAHAAAAFsAAF'
;

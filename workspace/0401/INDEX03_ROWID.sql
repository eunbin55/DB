--ROWID		
--	����Ŭ���� ������(ROWID)�� �ּҸ� �ּҶ� ǥ������ �ʰ� ROWID�� �Ѵ�.	

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

--DESC dept_temp;

--�μ���ȣ: 50
--�μ���: 'DATABASE'
--����: 'SEOUL'

INSERT INTO dept_temp (DEPTNO, DNAME, LOC)
VALUES(50, 'DATABASE', 'SEOUL');

commit;

SELECT *
FROM dept_temp;

--ROLLBACK;
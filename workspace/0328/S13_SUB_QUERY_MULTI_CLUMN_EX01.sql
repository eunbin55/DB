--EX01
--���� �÷� �������� ���
--pk�� ���� �÷��� ���ļ� ������� ��� �Ѳ����� ���ϱ����� ���
SELECT t1.profno,
       t1.name,
       TO_CHAR(t1.hiredate,'YYYY-MM-DD') AS hiredate,
       t2.dname
FROM professor t1, department t2
WHERE t2.deptno = t1.deptno
AND (t1.deptno,t1.hiredate) IN (SELECT  deptno,
                        MIN(hiredate)
                        FROM professor
                        GROUP BY deptno)
ORDER BY hiredate
;
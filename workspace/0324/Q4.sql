--4) Emp ���̺��� ����Ͽ� �Ʒ��� ȭ��� ���� 
--�μ����� ���޺��� �޿� �հ� ����� ����ϼ���.																		
--Ǯ��1)
SELECT deptno,
       SUM(DECODE(job, 'CLERK', sal) )as CLERK,
       SUM(DECODE(job, 'MANAGER', sal) )as MANAGER,
       SUM(DECODE(job, 'PRESIDENT', sal) )as PRESIDENT,
       SUM(DECODE(job, 'ANALYST', sal) )as ANALYST,
       SUM(DECODE(job, 'SALESMAN', sal) )as SALESMAN,
       SUM(sal) as TOTAL
FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;

--Ǯ��2)
--SELECT * FROM (SELECT  deptno,
--                       job,
--                       SUM(sal) AS sal
--                FROM emp
--                GROUP BY ROLLUP (deptno,job)
--                )
--
--PIVOT(SUM(sal) FOR job IN(
--                          'CLERK' AS CLERK,
--                          'MANAGER' AS MANAGER,
--                          'PRESIDENT' AS PRESIDENT,
--                          'ANALYST' AS ANALYST,
--                          'SALESMAN' AS SALESMAN
--                          )
--    )
----GROUP BY ROLLUP(deptno,job,sal,ename,mgr,hiredate,comm,empno)
--;
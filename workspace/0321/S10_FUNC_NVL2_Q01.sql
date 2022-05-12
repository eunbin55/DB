--Q.01
SELECT comm, NVL2(comm, 'Exist','NULL') AS NVL2
FROM emp
WHERE deptno = 30
;
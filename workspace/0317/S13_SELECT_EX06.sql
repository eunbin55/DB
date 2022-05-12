--Q6
SELECT *
FROM emp
WHERE comm is null
AND mgr is not null
and job in('MANAGER','CLERK')
and ename not LIKE '_L%'
;
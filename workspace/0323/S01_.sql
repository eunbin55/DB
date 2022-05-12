--LISTAGG(합칠컬럼, 구분자) WITHIN GROUP(ORDER BY 정렬컬럼)
SELECT deptno,
       LISTAGG(ename,',') WITHIN GROUP (ORDER BY ename) as list_agg
FROM emp
GROUP BY deptno
ORDER BY deptno
;
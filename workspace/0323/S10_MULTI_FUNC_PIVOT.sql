SELECT * FROM(SELECT deptno,job,sal FROM emp)
PIVOT( MAX(sal) FOR deptno IN(10,
                              20,
                              30
                                )

)
;
SELECT * FROM(SELECT deptno,job,sal FROM emp)
PIVOT( MAX(sal) FOR job IN('CLERK'  as CLERK,
                           'SALESMAN' as SALESMAN,
                            'ANALYST' as ANALYST,
                            'MANAGER' as MANAGER,
                            'PRESIDENT' as PRESIDENT
                                )
)
;
--Q3
SELECT empno AS EMPLOYEE_NO,
        ename AS EMPLOYEE_NAME,
        job AS MANAGER,
        sal AS SALARY,
        comm AS COMMISSION,
        deptno AS DEPARTMENT_NO
        
FROM emp
ORDER BY deptno DESC, ename ASC
;
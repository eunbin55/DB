--NULL + 4000 -> NULL
--NULL > 100 -> NULL
--���Ѵ� + NULL -> NULL
--SELECT empno,
--        ename,
--        sal,
--        sal * 12 + NVL(comm,0) anual_sal_comm,
--        comm
--FROM emp
--;

--comm�� null�� �ƴ� ������
SELECT empno,
        ename,
        sal,
        sal,
        comm
FROM emp
WHERE comm is NOT NULL
;

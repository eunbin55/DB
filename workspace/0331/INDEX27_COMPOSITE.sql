--emp ename, job�� ������ �ε����� ����.

CREATE INDEX idx_emp_comp
ON emp( ename ASC, job DESC);


SELECT *
FROM emp t1
WHERE t1.ename > '0';


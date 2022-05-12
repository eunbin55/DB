--emp ename, job을 결합한 인덱스를 생성.

CREATE INDEX idx_emp_comp
ON emp( ename ASC, job DESC);


SELECT *
FROM emp t1
WHERE t1.ename > '0';


--2. 특정 컬럼만 복사
CREATE TABLE dept3
AS
SELECT deptno, dname
FROM dept;

SELECT * FROM dept3;
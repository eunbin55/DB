--p.357 
--Q1-1
CREATE TABLE empidx
AS
SELECT *
FROM emp
;

SELECT * FROM empidx;

--Q1-2
CREATE INDEX idx_empidx_empno
ON empidx(empno);

SELECT * FROM user_ind_columns;

--Q1-3
SELECT *
FROM user_indexes t1
WHERE t1.table_name = 'EMPIDX'
;

SELECT t1.index_name, t1.table_name, t1.column_name
FROM USER_IND_COLUMNS T1
WHERE TABLE_NAME = 'EMPIDX';
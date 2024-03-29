--dept2 테이블 area 컬럼에 none unique index생성

CREATE INDEX idx_dept2_area
ON dept2 ( area ) ;

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA)   */ *
FROM dept2 t1
WHERE area > '0';

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));

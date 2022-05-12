--p.357 Q2.
CREATE OR REPLACE VIEW empidx_over15k
    AS( 
        SELECT empno,
               ename,
               job,
               deptno,
               sal,
               decode(comm,null,'X','O') AS COMM
        FROM empidx
        WHERE sal > 1500
    )
    ;

SELECT *
FROM empidx_over15k;

SELECT * 
FROM user_views
WHERE view_name = 'EMPIDX_OVER15K'
;
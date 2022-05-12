SELECT t1.name,
      (SELECT dname
        FROM dept2 t2
        WHERE t1.deptno = t2.dcode) "DNAME"
FROM emp2 t1
;

SELECT t1.name,
      t2. dname  "DNAME"
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
;
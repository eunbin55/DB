--3. Student 테이블과 department 테이블을 사용하여 
--학과이름 , 학과별 최대키 , 학과별로 가장 키가 큰 학생들의 																							
--이름과 키 를 Inline View 를 사용하여 아래와 같이 출력하세요.

SELECT dname,
       name
FROM(SELECT t2.deptno,
           MAX(t1.height) max_height,
           t1.name,
           MAX(t1.height) as height
        FROM student t1, department t2
        WHERE t1.deptno1 = t2.deptno
        GROUP BY t2.deptno, t1.name
    )
;

--강사버전
SELECT a.dname,
       a.max_height,
       b.name,
       b.height
FROM(
    SELECT t2.deptno, t2.dname, MAX(t1.height) max_height
    FROM student t1 INNER JOIN department t2
    ON t1.deptno1 = t2.deptno
    GROUP BY t2.deptno, t2.dname
)A JOIN student B
ON a.deptno = b.deptno1
AND a.max_height = b.height
;
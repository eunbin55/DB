--학생(student)과 교수 테이블(professor)를 join하여	
--학생의 이름과 지도교수이름을 출력하세요.	

--oracle join
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
;

--ansi join
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 INNER JOIN professor t2
ON t1.profno = t2.profno
;

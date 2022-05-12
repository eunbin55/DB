--부서번호: 70
--부서명: 'WEB'
--지역: NULL

INSERT INTO dept_temp VALUES(70, 'WEB', NULL);

SELECT * FROM dept_temp;

--부서번호: 80
--부서명: 'MOBILE'
--지역: ''    --문자열 날짜에 NULL입력(가능은 함)

INSERT INTO dept_temp (deptno, loc, dname) VALUES(80,'','MOBILE');
SELECT * FROM dept_temp;

--부서번호: 90
--부서명: NULL
--지역: 'INCHEON'
INSERT INTO dept_temp(deptno, loc) VALUES(90,'INCHEON');
SELECT * FROM dept_temp;



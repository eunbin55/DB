--컬럼수와 데이터 수 불일치
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(50, 'DATABASE');
--오류 발생 명령행: 3 열: 1
--오류 보고 -
--SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다

INSERT INTO dept_temp(deptno, dname)
VALUES(50, 'DATABASE', 'SEOUL');
--오류 발생 명령행: 8 열: 13
--오류 보고 -
--SQL 오류: ORA-00913: 값의 수가 너무 많습니다


--숫자가 입력될 자리에 문자입력
INSERT INTO dept_temp(deptno, dname, loc)
VALUES('FAIL', 'DATABASE', 'SEOUL');
--VALUES('FAIL', 'DATABASE', 'SEOUL')
--오류 보고 -
--ORA-01722: 수치가 부적합합니다

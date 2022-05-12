--UNIQUE INDEXT			
--	인덱스를 만드는 컬럼에 중복되는 데이터가 없다.		
--	(데이터 중복이 현재, 미래에도 없다.)		
--			
--	문법)		
--		CREATE 	UNIQUE INDEX 인덱스명
--        ON 테이블이름(컬럼 ASC|DESC, 컬럼 ASC|DESC);

DESC dept2;
SELECT * FROM dept2;

--dept2 테이블에 dname에 unique index생성
CREATE UNIQUE INDEX idx_dept2_dname
ON dept2(dname);

INSERT INTO dept2 VALUES (9100, 'temp01', '1006', 'Seoul Branch Office');

--dname 중복시 오류발생
INSERT INTO dept2 VALUES (9101, 'temp01', '1006', 'Seoul Branch Office');
--오류 보고 -
--ORA-00001: 무결성 제약 조건(SCOTT.IDX_DEPT2_DNAME)에 위배됩니다

--unique index가 성능은 아주 좋은데, 혹시 현재 중복된 값이 없다 하더라도
--향후에 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될 수 없다.

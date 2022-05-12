--	다양한 인덱스 활용		
--		- 인덱스를 활용하여 정렬한 효과를 내는 방법	
--		setp1. 사원테이블을 참조해 테이블 생성	
--		step2. name 컬럼에 인덱스 생성	
--		step3. 인덱스를 사용하지 않는 상태로 조회	
--		step4. 인덱스를 사용하여 조회	

--setp1
CREATE TABLE new_emp4 (
    no NUMBER,
    name VARCHAR2(10),
    sal NUMBER
);

INSERT INTO new_emp4 VALUES (1000,	'SMITH',	300	);
INSERT INTO new_emp4 VALUES (1001,	'ALLEN',	250	);
INSERT INTO new_emp4 VALUES (1002,	'KING',	430	);
INSERT INTO new_emp4 VALUES (1003,	'BLACK',	220	);
INSERT INTO new_emp4 VALUES (1004,	'JAMES',	620	);
INSERT INTO new_emp4 VALUES (1005,	'MILLER',	2000	);

COMMIT;

SELECT * FROM new_emp4;

--setp2
CREATE INDEX idx_newemp4_name
ON new_emp4(name ASC);

--step3
SELECT NO, name, sal
FROM new_emp4
;

--step4
SELECT NO, name, sal
FROM new_emp4
WHERE name > '0'
;

--scott사용자에 emp 테이블의 동의어 e 생성(private SYNONYM)
CREATE SYNONYM e FOR emp;

--동의어 e를 통해서 select, dml작업 가능
SELECT *
FROM e;

--scott사용자에 dept 테이블의 동의어 d2 생성(public SYNONYM)
CREATE PUBLIC SYNONYM d2 FOR dept;

SELECT *
FROM d2;

--SYNONYM 조회
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;
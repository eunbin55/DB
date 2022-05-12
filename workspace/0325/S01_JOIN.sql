--SELECT NO, NAME FROM cat_a
--UNION ALL
--SELECT * FROM cat_b
--UNION ALL
--SELECT * FROM cat_c;

--1. 정상적인 조인
--SELECT cat_a.name, cat_b.name --,no --:열의 정의가 애매합니다
--FROM cat_a, cat_b
--WHERE cat_a.NO = cat_b.NO
--;

--2. 2개의 테이블로 카티션 곱 생성(조인 조건 누락)
--SELECT a.name, 
--        b.name,
--        a.no
--FROM cat_a a, cat_b b
----WHERE a.NO = b.NO
--;

--3. 3개 테이블 정상 조인
--SELECT a.name,
--       b.name,
--       b.no
--FROM cat_a a, cat_b b, cat_c c
--WHERE a.no = b.no
--AND a.no = c.no
--;

--4. 3테이블 카티션 곱
--SELECT a.name,
--       b.name,
--       c.name,
--       b.no
--FROM cat_a a, cat_b b, cat_c c
----WHERE a.no = b.no
----AND a.no = c.no
--;









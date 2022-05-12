--SCOTT계정으로 with_test1테이블 생성 후 데이터 500만건 입력
--CREATE TABLE with_test1(
-- no NUMBER,
-- name VARCHAR2(10),
-- pay NUMBER(6)
--)
--TABLESPACE USERS;

--DESC with_test1; --테이블이 잘 만들어졌는지 확인작업

--500만건 입력
BEGIN
    FOR i IN 1..5000000 LOOP
        INSERT INTO with_test1 VALUES (i,
                                        DBMS_RANDOM.STRING('A',5), --대소문자 구분 없이 5자리 문자
                                        DBMS_RANDOM.VALUE(6,999999) );-- 6자리 숫자 랜덤
    END LOOP;
    COMMIT;
END;
/ --실행

--500만건 입력 건수 확인
SELECT COUNT(*)
FROM with_test1;

--STEP 2. MAX, MIN 함수를 사용하여 최대값, 최소값의 차이
SELECT MAX(pay) -MIN(pay)
FROM with_test1;

--STEP 3. PAY INDEX
CREATE INDEX idx_with_pay ON with_test1(pay);

SELECT MAX(pay)-MIN(pay)
FROM with_test1
WHERE pay > 0;

--WITH절을 사용하여 동일한 작업 수행
WITH a AS (
    /*최대값 */
    --ORACLE HINT
    SELECT /*+ INDEX  (w ids_with_pay) */ pay
    FROM with_test1 w
    WHERE pay > 0
    AND ROWNUM = 1
), b AS (
    /*최소값 */
    SELECT /*+ INDEX  (w ids_with_pay) */ pay
    FROM with_test1 w
    WHERE pay > 0
    AND ROWNUM = 1)
    SELECT a.pay - b.pay
    FROM a,b;


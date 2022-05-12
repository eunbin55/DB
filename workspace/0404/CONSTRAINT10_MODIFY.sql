--이미 생성한 테이블에 제약조건 지정
--TABLE_NOTNULL, 전화번호(TEL)에 NOT NULL추가

ALTER TABLE TABLE_NOTNULL
MODIFY( TEL not null);

SELECT *
FROM TABLE_NOTNULL;

UPDATE TABLE_NOTNULL
    SET TEL = '010-1234-5678'
WHERE LOGIN_ID = 'TEST_01';
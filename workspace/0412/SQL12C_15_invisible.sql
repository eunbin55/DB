CREATE TABLE T_MEMBER
(
    no NUMBER,
    name VARCHAR2(10),
    tel NUMBER,
    jumin VARCHAR2(13) invisible
);

--jumin 컬럼이 보이지 않음!
desc T_MEMBER;

INSERT INTO T_MEMBER VALUES (1, 'BBB',1234567890, 1234567);
--오류 보고 -
--SQL 오류: ORA-00913: 값의 수가 너무 많습니다

INSERT INTO T_MEMBER VALUES (1, 'BBB',1234567890);

SELECT * FROM T_MEMBER;

--속성변경
ALTER TABLE T_MEMBER
MODIFY (jumin VISIBLE);

SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MEMBER'
;
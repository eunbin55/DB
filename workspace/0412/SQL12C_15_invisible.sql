CREATE TABLE T_MEMBER
(
    no NUMBER,
    name VARCHAR2(10),
    tel NUMBER,
    jumin VARCHAR2(13) invisible
);

--jumin �÷��� ������ ����!
desc T_MEMBER;

INSERT INTO T_MEMBER VALUES (1, 'BBB',1234567890, 1234567);
--���� ���� -
--SQL ����: ORA-00913: ���� ���� �ʹ� �����ϴ�

INSERT INTO T_MEMBER VALUES (1, 'BBB',1234567890);

SELECT * FROM T_MEMBER;

--�Ӽ�����
ALTER TABLE T_MEMBER
MODIFY (jumin VISIBLE);

SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MEMBER'
;
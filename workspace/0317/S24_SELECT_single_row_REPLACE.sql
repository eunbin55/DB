--REPLACE()�Լ�
--Ư�� ���ڿ� �����Ϳ� ���Ե� ���ڸ� �ٸ� ���ڷ� ��ü�� ��� ���.
--REPLACE('���ڿ�')
SELECT '010-1234-5678' as REPLACE_BEFORE,
        REPLACE('010-1234-5678','-',' ') AS REP,
        REPLACE('010-1234-5678','-') AS REP
FROM dual
;
--NEXT_DAY(��¥ ������, ���Ϲ���)
--Ư�� ��¥�� �������� ���ƿ��� ������ ��¥�� ������ִ� �Լ�
SELECT SYSDATE,
        NEXT_DAY(SYSDATE,'�ݿ���') AS "NEXT_DAY_��",
        LAST_DAY(SYSDATE) AS "3MONTH_LAST"
FROM dual
;
SELECT STD_DATE,
        TRUNC(STD_DATE,'CC') AS ROUND_CC, --������ 2�ڸ� 2018�̸� 2050�����̹Ƿ� 2001��
        TRUNC(STD_DATE,'YYYY') AS ROUND_YYYY, --2018-07-01 �������� �ݿø�
        TRUNC(STD_DATE,'Q') AS ROUND_Q, --�� �б��� �ι�° �� 16�ϱ���
        TRUNC(STD_DATE,'DDD') AS ROUND_DDD, --�ش��Ͽ� ����(12:00)
        TRUNC(STD_DATE,'HH') AS ROUND_HH --�ð��� �������� �ݿø�
FROM(
    SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') STD_DATE
    FROM dual
)
;
--Student ���̺��� jumin �÷��� �����Ͽ� �л����� �̸��� �¾ �� , �׸��� �б⸦ ����ϼ���. 
--
--�¾ ���� 01-03�� �� 1/4, 
--04 - 06�� �� 2/4 , 
--07 - 09 �� �� 3/4 , 
--10 - 12 ���� 4/4 �� ����ϼ���

--BETWEEN '01' AND '03' -> �ڵ����� ���ڷ� ��ȯ
SELECT name,
        SUBSTR(jumin,3,2) AS "MONTH",
        CASE WHEN SUBSTR(jumin,3,2) BETWEEN '01' AND '03' THEN '1/4'
             WHEN SUBSTR(jumin,3,2) BETWEEN '04' AND '06' THEN '2/4'
             WHEN SUBSTR(jumin,3,2) BETWEEN '07' AND '09' THEN '3/4'
             WHEN SUBSTR(jumin,3,2) BETWEEN '10' AND '12' THEN '4/4'
        END "Quoter"
FROM student
;
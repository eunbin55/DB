--P_CODE	NUMBER	No
--P_DATE	VARCHAR2(8 BYTE)	No
--P_QTY	NUMBER	Yes
--P_STORE	VARCHAR2(5 BYTE)	Yes
--P_TOTAL	NUMBER	Yes

--�� 1)  panmae ���̺��� ����Ͽ� 1000 �� �븮���� �Ǹ� ������ ����ϵ� 
--�Ǹ�����, ��ǰ�ڵ�, �Ǹŷ�, ���� �Ǹűݾ��� �Ʒ��� ���� ����ϼ���.

SELECT P_DATE,
       p_code,
       P_QTY,
       P_total,
       SUM(P_total) OVER(ORDER BY p_total) "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;
--�� 2)
-- panmae ���̺��� ����Ͽ� 1000 �� �븮���� �Ǹ� ������ ��ǰ �ڵ庰�� �з��� �� 
--�Ǹ�����, ��ǰ�ڵ�, �Ǹŷ�, �Ǹűݾ�, �����Ǹűݾ��� �Ʒ��� ���� ����ϼ���.
SELECT P_DATE,
       p_code,
       P_QTY,
       P_total,
       SUM(P_total) OVER(ORDER BY p_total) "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;
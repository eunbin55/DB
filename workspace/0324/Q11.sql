--Q11
--13) loan ���̺��� ��ȸ�Ͽ� 1000�� ������ ���� ������ ���� �ڵ庰�� ���ļ�  																		
--��������,���ⱸ���ڵ�, ����Ǽ�, �����Ѿ�, �ڵ庰 ��������ݾ��� �Ʒ��� ���� ����ϼ���.																	
SELECT l_date AS "��������",
       l_code AS "���ⱸ���ڵ�",
       l_qty AS "����Ǽ�",
       l_total AS "�����Ѿ�",
       SUM(l_total) OVER(PARTITION BY l_code ORDER BY l_total) AS "�ڵ庰 ��������ݾ�"
FROM loan
WHERE l_store =1000
;
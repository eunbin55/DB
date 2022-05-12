--	�ε����� Ȱ���ؼ� �ּҰ�(min) �ִ밪(max)���ϱ�		
--		MIN/MAX�Լ��� ��� �����͸� ���� �÷����� ������ �� �ִ�/�ּҰ��� ���ϴ� �Լ�	
SELECT MIN(name)
FROM new_emp4;

--INDEX�� ����ؼ� �ּҰ� ���ϱ�
SELECT name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1;

SELECT MAX(name)
FROM new_emp4;

--index�� ����ؼ� �ִ밪 ���ϱ�
--oracle hint : /*+ INDEX_DESC (���̺�� �ε�����) */ name
SELECT /*+ INDEX_DESC(t1 IDX_NEWEMP4_NAME) */ name
FROM new_emp4 t1
WHERE name > '0'
AND ROWNUM = 1;
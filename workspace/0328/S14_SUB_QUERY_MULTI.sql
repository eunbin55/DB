--Emp2 ���̺��� ��ȸ�ؼ� ���� �� �߿��� �ڽ��� ������ ��տ����� ���ų� ���� �޴� 
--������� �̸��� ����, ���� ������ ����ϼ���.
SELECT t1.name,
        t1.position,
        TO_CHAR(t1.pay,'$999,999,999') AS salary
FROM emp2 t1
WHERE t1.pay >= (SELECT AVG(NVL(t2.pay,0))
                    FROM emp2 t2
                    WHERE t1.position = t2.position
                        );
--HAVING���� SELECT���� GROUP BY���� ������ ���� ����� �� �ִ�.
--�׸��� GROUP BY���� ���� �׷�ȭ�� ��� ���� ������ �����ϴµ� ����մϴ�.
--emp���̺��� ��� �޿��� 2000���� �̻��� �μ��� �μ���ȣ, ��� �޿��� ����ϱ�

--SELECT deptno, AVG( NVL (sal,0))
--FROM emp
--WHERE AVG(NVL( sal,0)) >= 2000
--GROUP BY deptno
--;
--ORA-00934: �׷� �Լ��� �㰡���� �ʽ��ϴ�
--00934. 00000 -  "group function is not allowed here"

SELECT deptno, AVG( NVL (sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;
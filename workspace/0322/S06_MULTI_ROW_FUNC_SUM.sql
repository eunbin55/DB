----SUM() �Լ�
--�Է� �����͵��� �հ� ���� ���ϴ� �Լ�
--SUM( [DISTINCT, ALL])

--SELECT sal --sal����
--FROM emp
--ORDER by sal
--;

--sal����
--sal �ߺ� ������ ���� ����
--SUM(sal) DEFAULT ALL
SELECT 
    SUM(ALL sal), 
    SUM(DISTINCT sal),
    SUM(sal)
FROM emp
;
--������ �Ϻθ� �����ϱ�
--�μ���ȣ 40
---�μ��� 'DATABASE'
--�μ� ��ġ ���� 'SEOUL'
SELECT *
FROM dept_temp2
WHERE deptno = 40;

UPDATE dept_temp2
    SET dname = 'DATABASE',
        loc = 'SEOUL'
    WHERE deptno = 40;
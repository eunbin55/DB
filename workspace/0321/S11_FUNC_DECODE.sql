--���� 1 ����: professor���̺��� �а���ȣ�� ������, �а����� ����ϵ� deptno�� 101����
--������ �а����� "Computer Engineering"���� ����ϰ� 101���� �ƴ� �������� �а��� 
--�ƹ��͵� ������� ������
SELECT deptno,
        name,
        DECODE(deptno,101,'Computer Engineering'
                    ,102,'Multimedia Engineering'
                    ,103,'Software Engineering'
                    ,   'ETC') AS DNAME
FROM professor
;
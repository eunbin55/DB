--���� 4 ���� : professor ���̺��� ������ �̸��� �μ���ȣ�� ����ϰ� 101 �� �μ� �߿��� �̸��� "Audie Murphy" 
--�������� "BEST!" ��� ����ϰ� 101�� �μ� �߿��� �̸��� "Audie Murphy" ������ �ƴ� ���������� NULL ���� ����ϼ���. 
--���� 101 �� �� �ٸ� �а��� "Audie Murphy" ������ �־ "BEST!" �� ��µǸ� �ȵ˴ϴ�.
SELECT name,
        deptno,
        DECODE(deptno, 101, DECODE(name,'Audie Murphy','BEST!',NULL)) "NESTED_DECODE"
FROM professor
;
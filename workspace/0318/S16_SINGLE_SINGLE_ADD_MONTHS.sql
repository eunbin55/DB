--�Ի� 42�� �̸��� ��� ������ ���
SELECT empno,
        ename,
        hiredate,
        sysdate
FROM emp
WHERE ADD_MONTHS(hiredate,12*10*4+2) > SYSDATE
;
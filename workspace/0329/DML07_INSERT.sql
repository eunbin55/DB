INSERT INTO emp_temp (
    empno				
    ,ename				
    ,job				
    ,mgr				
    ,hiredate				
    ,sal				
    ,comm				
    ,deptno				
)VALUES(
    9999
    ,'ȫ�浿'
    ,'PRESIDENT'
    ,NULL
    ,'2001/01/01'
    ,5000
    ,1000
    ,10
);

SELECT *
FROM emp_temp;

INSERT INTO emp_temp (
    empno				
    ,ename				
    ,job				
    ,mgr				
    ,hiredate				
    ,sal				
    ,comm				
    ,deptno				
)VALUES(
    9999
    ,'ȫ�浿'
    ,'PRESIDENT'
    ,NULL
    ,'2001-01-01'
    ,5000
    ,1000
    ,10
);

--�����׽�Ʈ
INSERT INTO emp_temp (
    empno				
    ,ename				
    ,job				
    ,mgr				
    ,hiredate				
    ,sal				
    ,comm				
    ,deptno				
)VALUES(
    2111
    ,'ȫ02'
    ,'PRESIDENT'
    ,NULL
    ,'01/01/2001'
    ,5000
    ,1000
    ,10
);
--���� ���� -
--ORA-01830: ��¥ ������ ������ ���ʿ��� �����Ͱ� ���ԵǾ� �ֽ��ϴ�

--SYSDATE�̿� �Է�
INSERT INTO emp_temp (
    empno				
    ,ename				
    ,job				
    ,mgr				
    ,hiredate				
    ,sal				
    ,comm				
    ,deptno				
)VALUES(
    2113
    ,'ȫ06'
    ,'PRESIDENT'
    ,NULL
    ,SYSDATE
    ,5000
    ,1000
    ,10
);
SELECT
    * FROM emp_temp;
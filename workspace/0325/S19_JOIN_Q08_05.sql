--Q
--1. �л� ���̺� (student) �� �а� ���̺� (department) ���̺��� ����Ͽ� 
--�л��̸�, 1 �����а���ȣ(deptno1) , 1���� �а� �̸��� ����ϼ���.																													
--( ANSI Join ������ Oracle Join ���� ���� ���� SQL �� �ۼ��ϼ��� )														

--Oracle
SELECT t1.name as STU_NAME,
       t1.deptno1,
       t2.dname
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
ORDER BY t1.studno
;
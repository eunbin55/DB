--student���̺��� tel�÷��� ����Ͽ� 1����(deptno1)�� 201����
--�л��� �̸��� ������ȣ�� ����ϼ���.

SELECT name,
        tel,
        SUBSTR(tel,1,INSTR(tel,')')-1) "area_cod"
FROM student
WHERE deptno1 = 201
;
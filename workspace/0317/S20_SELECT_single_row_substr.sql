--student���̺���jumin�÷��� ����ؼ� 1���� 101���� �л����� �̸��� �¾ �������, 
--���� �Ϸ� �� ��¥�� ����ϼ���.
SELECT name,
        SUBSTR(jumin,1,6) "Birthday",
        SUBSTR(jumin,1,6)-1 "Birthday-1"
FROM student
WHERE deptno1 = 101
;
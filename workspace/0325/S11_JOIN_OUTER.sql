--�� 1 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.																				
--�� ���������� �������� ���� �л��� ��ܵ� �Բ� ����ϼ���.													
--ORACLE OUTER JOIN
--WHERE �������� ����Ÿ �����ʿ� (+) 
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;
--ANSI OUTER JOIN
--�������ǿ� �����Ͱ� �ִ� ������ �������ϱ�
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;
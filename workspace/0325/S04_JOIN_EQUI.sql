--�л�(student)�� ���� ���̺�(professor)�� join�Ͽ�	
--�л��� �̸��� ���������̸��� ����ϼ���.	

--oracle join
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
;

--ansi join
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 INNER JOIN professor t2
ON t1.profno = t2.profno
;
--Q7
--7) student ���̺��� Tel �÷��� ����Ͽ� �Ʒ��� ���� ������ �ο����� ��ü��� 																	
--�����ϴ� ������ ����ϼ���														
--(��, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN, 																	
--053-DAEGU,055-GYEONGNAM���� ����ϼ���.)

SELECT COUNT(*) ||'EA (' || count(*) / count(*) * 100 || '%)' total,
    COUNT(DECODE(t1.area,'02','SEOUL')) ||'EA ('   SEOUL,
    COUNT(DECODE(t1.area,'031','GYEONGGI')) ||'EA ('  GYEONGGI,
    COUNT(DECODE(t1.area,'051','BUSAN')) ||'EA ('  BUSAN,
    COUNT(DECODE(t1.area,'052','ULSAN')) ||'EA ('  ULSAN,
    COUNT(DECODE(t1.area,'053','DAEGU')) ||'EA ('  DAEGU,
    COUNT(DECODE(t1.area,'055','GYEONGNAM')) ||'EA ('  GYEONGNAM
FROM(
    SELECT SUBSTR(tel,1,INSTR(tel,')')-1) AS area
    FROM student
) t1
;
--3) Student ���̺��� tel �÷��� �����Ͽ� �Ʒ��� ���� ������ �ο����� 																						
--����ϼ���.��, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 																						
--052-ULSAN, 053-DAEGU, 055-GYEONGNAM���� ����ϼ���.																						

SELECT COUNT(*) total,
    COUNT(DECODE(t1.TEL,'02','SEOUL')) SEOUL,
    COUNT(DECODE(t1.TEL,'031','GYEONGGI')) GYEONGGI,
    COUNT(DECODE(t1.TEL,'051','BUSAN')) BUSAN,
    COUNT(DECODE(t1.TEL,'052','ULSAN')) ULSAN,
    COUNT(DECODE(t1.TEL,'053','DAEGU')) DAEGU,
    COUNT(DECODE(t1.TEL,'055','GYEONGNAM')) GYEONGNAM

FROM(SELECT SUBSTR(tel,1,INSTR(tel,')')-1) AS TEL
        FROM student
    ) t1
;
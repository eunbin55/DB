--DESC t_reg;
--SELECT text
--FROM t_reg
--;

--REGEXP_LIKE(text,REGEXP)

--�ҹ��ڰ� ��� �ִ� ���� ��� ���
--a-z : �ҹ���
--A-Z : �빮��
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-zA-Z]')
--;

--�ҹ��ڷ� �����ϰ� ������ �����ϴ� ��� ã��
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-z] ')
--;

--�������� ���ڼ� �����ϱ�
--[A-Z]
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z] ')
;
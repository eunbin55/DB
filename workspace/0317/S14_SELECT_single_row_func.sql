--UPPER : �ҹ��ڸ� �빮�ڷ�
--LOWER : �빮�ڸ� �ҹ��ڷ�
--INITCAP : ù ���� �빮��
--SELECT ename,
--        LOWER(ename) AS lower_name,
--        UPPER(ename) AS upper_name,
--        INITCAP(ename) AS initcap_name
--FROM emp
--;

SELECT *
FROM emp
WHERE ename = UPPER('scott')
;

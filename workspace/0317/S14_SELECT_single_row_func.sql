--UPPER : 소문자를 대문자로
--LOWER : 대문자를 소문자로
--INITCAP : 첫 글자 대문자
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

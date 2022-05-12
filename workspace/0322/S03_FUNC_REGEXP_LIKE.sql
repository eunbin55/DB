--DESC t_reg;
--SELECT text
--FROM t_reg
--;

--REGEXP_LIKE(text,REGEXP)

--소문자가 들어 있는 행을 모두 출력
--a-z : 소문자
--A-Z : 대문자
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-zA-Z]')
--;

--소문자로 시작하고 공백을 포함하는 경우 찾기
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-z] ')
--;

--연속적인 글자수 지정하기
--[A-Z]
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z] ')
;
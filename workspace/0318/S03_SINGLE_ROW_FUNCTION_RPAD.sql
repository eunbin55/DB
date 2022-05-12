--RPAD('문자열' 또는 컬럼, 자릿수, 채울문자)
SELECT 'Oracle',
        RPAD('Oracle',10,'*')
FROM dual
;
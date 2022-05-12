--딕셔너리 통한 오류조회
SELECT name,
       type,
       line,
       text
FROM user_errors
WHERE name = 'PRO_ERR'
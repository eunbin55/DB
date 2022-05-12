--NEXT_DAY(날짜 데이터, 요일문자)
--특정 날짜를 기준으로 돌아오는 요일의 날짜를 출력해주는 함수
SELECT SYSDATE,
        NEXT_DAY(SYSDATE,'금요일') AS "NEXT_DAY_금",
        LAST_DAY(SYSDATE) AS "3MONTH_LAST"
FROM dual
;
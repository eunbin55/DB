--ROUND()
--정오를 기준으로 상품접수가 오전에 되었으면 당일 배송,
--그렇지 않으면 다음날 배송,

--TRUNC()

SELECT SYSDATE,
        ROUND(SYSDATE) AS "ROUND_SYSDATE",
        TRUNC(SYSDATE) AS "TRUNC_SYSDATE"
FROM dual
;
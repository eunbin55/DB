--TRUNC(숫자, 원하는 자리수)
SELECT trunc(1234.5678) AS TRUNC01,
        trunc(1234.5678, 1) AS TRUNC02,
        trunc(1234.5678, 2) AS TRUNC03,
        trunc(1234.5678, -1) AS TRUNC04
FROM dual
;
--날짜 데이터 + 숫자: 날짜 데이터보다 숫자 만큼 일수

--SYSDATE
-----------
--22/03/19

--날짜 FORMAT변경하기(1회성)
--ALTER SESSION SET NLS_DATE_FORMAT ='RRRR-MM-DD:HH24:MI:SS';
--SELECT SYSDATE
--FROM dual
--;
SELECT SYSDATE +1 AS tomorrow
    
FROM dual
;
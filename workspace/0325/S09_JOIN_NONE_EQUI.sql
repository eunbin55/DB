--ORACLE Join
SELECT t1.gname as cust_name,
       TO_CHAR(t1.point,'999,999,999') as point,
       t2.gname as gift_name
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start 
AND t1.point <= t2.g_end
;

--ANSI Join
SELECT t1.gname as cust_name,
       TO_CHAR(t1.point,'999,999,999') as point,
       t2.gname as gift_name
FROM customer t1 JOIN gift t2
ON t1.point >= t2.g_start 
AND t1.point <= t2.g_end
;
--
SELECT ename,
        LENGTH(ename) ename_len
FROM emp
WHERE LENGTH(ename) >= 5
--WHERE LENGTH(ename) 인덱스가 있어도 사용할 수 없음!
;
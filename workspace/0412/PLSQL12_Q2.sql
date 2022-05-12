--p.519 Q2.
CREATE OR REPLACE FUNCTION func_date_kor(
    hiredate in DATE
)
RETURN VARCHAR2
IS
    --v_kor_date VARCHAR2(30);
BEGIN
    RETURN(TO_CHAR(hiredate,'YYYY"³â" MM"¿ù" DD"ÀÏ"'));
END func_date_kor;
/

SELECT ename, 
       func_date_kor(hiredate) AS hiredate
FROM emp
WHERE empno = 7369;
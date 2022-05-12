--문법)
--MERGE INTO TABLE1		TABLE1에 데이터를 UPDATE, DELETE, INSERT			
--USING TABLE2									
--ON(병합조건)									
--WHEN MATCHED THEN									
--		UPDATE SET 업데이트 내용							
--		DELETE WHERE 조건							
--WHEN NOT MATCHED THEN									
--		INSERT VALUES(데이터)							

--INSERT INTO sawon (
--    empno,
--    ename,
--    hiredate,
--    deptno
--) VALUES (
--    :v0,
--    :v1,
--    sysdate,
--    :v3
--);
MERGE INTO sawon ta
USING ( SELECT :empno AS empno,
               :ename AS ename,
               sysdate AS hiredate,
               :deptno AS deptno
        FROM dual
) tb
ON( ta.empno = tb.empno)
WHEN MATCHED THEN
    UPDATE SET ta.ename = tb.ename,
               ta.hiredate = tb.hiredate,
               ta.deptno = tb.deptno
WHEN NOT MATCHED THEN
    INSERT (ta.empno, ta.ename, ta.hiredate, ta.deptno) VALUES (tb.empno,tb.ename,tb.hiredate,tb.deptno);


SELECT * FROM sawon;





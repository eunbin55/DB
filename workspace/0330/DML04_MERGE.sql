--����)
--MERGE INTO TABLE1		TABLE1�� �����͸� UPDATE, DELETE, INSERT			
--USING TABLE2									
--ON(��������)									
--WHEN MATCHED THEN									
--		UPDATE SET ������Ʈ ����							
--		DELETE WHERE ����							
--WHEN NOT MATCHED THEN									
--		INSERT VALUES(������)							

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





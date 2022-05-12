SELECT * FROM dept_tcl;

--deptno = 30ÀÇ LOC = 'SEOUL'
UPDATE dept_tcl
    SET loc = 'SEOUL'
WHERE deptno = 30;
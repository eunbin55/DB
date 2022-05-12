--RUN
INSERT INTO dept_trg(
    deptno,
    dname,
    loc
) VALUES(
    99,
    'test_dname',
    'seoul'
);

COMMIT;

SELECT * FROM dept_trg;
SELECT * FROM dept_trg_log;

UPDATE dept_trg
    SET loc = 'TEST_LOC'
WHERE deptno = 99;

commit;

DELETE FROm dept_trg WHERE deptno = 99;

commit;

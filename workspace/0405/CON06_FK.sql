SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP', 'DEPT')
;

SELECT *
FROM EMP;

SELECT *
FROM DEPT;

--오류메시지 확인
INSERT INTO emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    50
);
--ORA-02291: 무결성 제약조건(SCOTT.FK_DEPTNO)이 위배되었습니다- 부모 키가 없습니다
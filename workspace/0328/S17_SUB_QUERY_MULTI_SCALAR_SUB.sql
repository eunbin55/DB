--2�� �̻��� ������ ��ȯ�� ��û�ϴ� ��� - ����
SELECT t3.no,
        t3.name,
        (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno) as dname
FROM t3
;
UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
COMMIT;
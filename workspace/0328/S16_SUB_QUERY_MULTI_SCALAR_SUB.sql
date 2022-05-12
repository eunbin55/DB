--t3, t4테이블 생성
CREATE TABLE t3(
    no NUMBER,
    name varchar2(10),
    deptno NUMBER
);

INSERT INTO t3 VALUES (1,'AAA',100);
INSERT INTO t3 VALUES (2,'BBB',200);
INSERT INTO t3 VALUES (3,'CCC',300);

CREATE TABLE t4(
    deptno NUMBER,
    dname varchar2(10)
);

INSERT INTO t4 VALUES (100,'DDD');
INSERT INTO t4 VALUES (100,'EEE'); --ERROR

INSERT INTO t4 VALUES (200,'FFF');

INSERT INTO t4 VALUES (300,'GGG');
COMMIT;
SELECT * FROM t3;
SELECT * FROM t4;

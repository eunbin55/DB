--1. �� ������ ����
--CONSTRAINT [���������̸�] REFERENCES �������̺�(�����÷�) ON DELETE CASCADE;

--2. �� �����͸� NULL�� ����
--CONSTRAINT [���������̸�] REFERENCES �������̺�(�����÷�) ON DELETE SET NULL;

--STEP. 1
--c_test1, c_test2���̺� ����
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);

CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(10)
);

--STEP. 2 
--�ΰ��� ���̺� ���� ������ ����. ������ �Է�

--c_test1�� c_teat1_deptno_fk ����Ű ���� ����(c_teat2 no�� uk��� �����߻� Ȯ��)
ALTER TABLE c_test1
ADD CONSTRAINT cteat1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
;
--ORA-02270: �� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�

ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);

--����(�ɼǾ��༭ ���� �� �ٽ� �����Ϸ���)
--ALTER TABLE c_test1
--DROP CONSTRAINT CTEAT1_DEPTNO_FK;

ALTER TABLE c_test1
ADD CONSTRAINT cteat1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE
;

INSERT INTO c_test2 VALUES(10, 'AAA');
INSERT INTO c_test2 VALUES(20, 'BBB');
INSERT INTO c_test2 VALUES(30, 'CCC');
COMMIT;
SELECT * FROM c_test2;

INSERT INTO c_test1 VALUES(1, 'apple',10);
INSERT INTO c_test1 VALUES(2, 'banana',20);
INSERT INTO c_test1 VALUES(3, 'cherry',30);
COMMIT;
SELECT * FROM c_test1;

--�����߻� Ȯ��
INSERT INTO c_test1 VALUES(4, 'peach',40);
--ORA-02291: ���Ἲ ��������(SCOTT.CTEAT1_DEPTNO_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�

--on delete cascade �׽�Ʈ

DELETE FROM c_test2 WHERE no = 10;
SELECT * FROM c_test1;

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('C_TEST1', 'C_TEST2')
;



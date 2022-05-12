--SCOTT�������� with_test1���̺� ���� �� ������ 500���� �Է�
--CREATE TABLE with_test1(
-- no NUMBER,
-- name VARCHAR2(10),
-- pay NUMBER(6)
--)
--TABLESPACE USERS;

--DESC with_test1; --���̺��� �� ����������� Ȯ���۾�

--500���� �Է�
BEGIN
    FOR i IN 1..5000000 LOOP
        INSERT INTO with_test1 VALUES (i,
                                        DBMS_RANDOM.STRING('A',5), --��ҹ��� ���� ���� 5�ڸ� ����
                                        DBMS_RANDOM.VALUE(6,999999) );-- 6�ڸ� ���� ����
    END LOOP;
    COMMIT;
END;
/ --����

--500���� �Է� �Ǽ� Ȯ��
SELECT COUNT(*)
FROM with_test1;

--STEP 2. MAX, MIN �Լ��� ����Ͽ� �ִ밪, �ּҰ��� ����
SELECT MAX(pay) -MIN(pay)
FROM with_test1;

--STEP 3. PAY INDEX
CREATE INDEX idx_with_pay ON with_test1(pay);

SELECT MAX(pay)-MIN(pay)
FROM with_test1
WHERE pay > 0;

--WITH���� ����Ͽ� ������ �۾� ����
WITH a AS (
    /*�ִ밪 */
    --ORACLE HINT
    SELECT /*+ INDEX  (w ids_with_pay) */ pay
    FROM with_test1 w
    WHERE pay > 0
    AND ROWNUM = 1
), b AS (
    /*�ּҰ� */
    SELECT /*+ INDEX  (w ids_with_pay) */ pay
    FROM with_test1 w
    WHERE pay > 0
    AND ROWNUM = 1)
    SELECT a.pay - b.pay
    FROM a,b;


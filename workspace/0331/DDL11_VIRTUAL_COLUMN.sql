--�����÷�(11g�߰�)						
--	STEP 1. ���� �÷��� ������ ���̺� ����					
--	STEP 2. ���̺� ������ �Է�(�����÷��� ���� ������ �Է� �� ��!)					
--	STEP 3. �Էµ� ������ ��ȸ					
--  STEP 4. �������� ����


--STEP 1.				
CREATE TABLE vt1(
    COL1 number,
    COL2 number,
    COL3 number GENERATED ALWAYS AS (COL1 + COL2)
);

--STEP 2.
INSERT INTO vt1 VALUES(1,2,3);
--SQL ����: ORA-54013: INSERT �۾��� ���� ������ ������ �ʽ��ϴ�.

INSERT INTO vt1 (col1, col2) VALUES (1,2);

--STEP 3.
SELECT * FROM vt1;

--STEP 4.
UPDATE vt1
    SET col1 = 5;
    
    

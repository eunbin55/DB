--TEMP���̺�����
CREATE TABLE TEMP(
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20)
);

--TEMP���̺��� SELECT������ ORCLSTUDY�� �ο�
GRANT SELECT ON TEMP TO ORCLSTUDY;

--TEMP���̺��� INSERT������ ORCLSTUDY�� �ο�
GRANT INSERT ON TEMP TO ORCLSTUDY;

--SELECT, INSERT������ �Ѳ����� �ο�
GRANT SELECT, INSERT ON TEMP TO ORCLSTUDY;

SELECT * FROM temp;
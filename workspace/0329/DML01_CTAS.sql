--CTAS(���̺� ����)		
--	CREATE TABLE ���̺��	
--	AS SELECT * FROM ���̺��	
--		
--DEPT���̺� �����ؼ� DEPT_TEMP���̺� �����		

--���̺� ����
DROP TABLE dept_temp;

--���̺� ����
CREATE TABLE DEPT_TEMP
AS
SELECT * FROM DEPT;

--���̺� ����
SELECT *FROM dept_TEMP;

--Ȯ��
COMMIT;

--�ǵ�����
ROLLBACK;






--���� ���̺� �������뿡�� ����
--1. flashbackȮ��


SELECT OBJECT_NAME,
       ORIGINAL_NAME,
       CREATETIME
FROM recyclebin;

--2. ����
FLASHBACK TABLE "BIN$i7N0F8jsQIu3PY4yk7bSOg==$0" TO BEFORE DROP;

SELECT * FROM emp_hw;
--삭제 테이블 쓰레기통에서 복구
--1. flashback확인


SELECT OBJECT_NAME,
       ORIGINAL_NAME,
       CREATETIME
FROM recyclebin;

--2. 복원
FLASHBACK TABLE "BIN$i7N0F8jsQIu3PY4yk7bSOg==$0" TO BEFORE DROP;

SELECT * FROM emp_hw;
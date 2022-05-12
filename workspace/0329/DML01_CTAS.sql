--CTAS(테이블 복제)		
--	CREATE TABLE 테이블명	
--	AS SELECT * FROM 테이블명	
--		
--DEPT테이블 복사해서 DEPT_TEMP테이블 만들기		

--테이블 삭제
DROP TABLE dept_temp;

--테이블 생성
CREATE TABLE DEPT_TEMP
AS
SELECT * FROM DEPT;

--테이블 생성
SELECT *FROM dept_TEMP;

--확정
COMMIT;

--되돌리기
ROLLBACK;






--VIEW2 생성
CREATE OR REPLACE VIEW view2
AS (SELECT a,b FROM o_table)
WITH READ ONLY;

--데이터 입력(오류 확인용)
INSERT INTO view2 VALUES (1,2);
--오류 보고 -
--SQL 오류: ORA-42399: 읽기 전용 뷰에서는 DML 작업을 수행할 수 없습니다.
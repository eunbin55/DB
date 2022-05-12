--Q11
--13) loan 테이블을 조회하여 1000번 지점의 대출 내역을 대출 코드별로 합쳐서  																		
--대출일자,대출구분코드, 대출건수, 대출총액, 코드별 누적대출금액을 아래와 같이 출력하세요.																	
SELECT l_date AS "대출일자",
       l_code AS "대출구분코드",
       l_qty AS "대출건수",
       l_total AS "대출총액",
       SUM(l_total) OVER(PARTITION BY l_code ORDER BY l_total) AS "코드별 누적대출금액"
FROM loan
WHERE l_store =1000
;
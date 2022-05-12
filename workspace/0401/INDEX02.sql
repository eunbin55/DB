--	인덱스를 활용해서 최소값(min) 최대값(max)구하기		
--		MIN/MAX함수는 모든 데이터를 기준 컬럼으로 정렬한 후 최대/최소값을 구하는 함수	
SELECT MIN(name)
FROM new_emp4;

--INDEX를 사용해서 최소값 구하기
SELECT name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1;

SELECT MAX(name)
FROM new_emp4;

--index를 사용해서 최대값 구하기
--oracle hint : /*+ INDEX_DESC (테이블명 인덱스명) */ name
SELECT /*+ INDEX_DESC(t1 IDX_NEWEMP4_NAME) */ name
FROM new_emp4 t1
WHERE name > '0'
AND ROWNUM = 1;
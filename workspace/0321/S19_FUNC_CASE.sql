--Student 테이블을 참조하여 deptno1 이 201 번인 학생의 이름과 전화번호, 지역 명을 출력하세요. 
--단 지역번호가 02 면 "SEOUL", 031 이면 "GYEONGGI", 051 이면 "BUSAN", 
--052 이면 "ULSAN", 055 이면 "GYEONGNAM", 나머지는 "ETC" 로 표시하세요.
--'=' 조건과 결과가 '='인 경우
--CASE 조건 WHEN 결과1 THEN 출력1
--            WHEN 결과2 THEN 출력2
--            WHEN 결과1 THEN 출력1
--            ELSE 출력4
--END "컬럼명"

SELECT name,
        tel,
         CASE(SUBSTR(tel,1,INSTR(tel,')')-1)) WHEN '02' THEN 'SEOUL'
                                            WHEN '031' THEN 'GYEONGGI'
                                            WHEN  '051' THEN 'BUSAN'
                                              WHEN '052' THEN 'ULSAN'
                                              WHEN '055' THEN 'GYEONGNAM'
                                              ELSE 'ETC'
        END AS LOC02,
        DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),02,'SEOUL',
                                              031,'GYEONGGI',
                                              051,'BUSAN',
                                              052,'ULSAN',
                                              055,'GYEONGNAM',
                                                'ETC'
                                              )AS LOC
        
FROM student
WHERE deptno1 = 201
;
--유형 5 예제: professor 테이블에서 교수의 이름과 부서번호를 출력하고 101 번 부서 중에서 이름이 "Audie Murphy" 
--교수에게 비고란에 "BEST!"라고 출력하고 101번 학과의 "Audie Murphy" 교수 외에는 비고란에 
--"GOOD!"을 출력하고 101번 교수가 아닐 경우는 비고란이 공란이 되도록 출력하세요.
--if(deptno == 101) {
--    if(name ----== 'Audie Murphy') {
--        'Best!'
--    } else {
--        null
--    }
--}

SELECT deptno,
        name,
        DECODE(deptno,101,DECODE(name,'Audie Murphy','BEST!','GOOD!')) "NESTED_DECODE"
FROM professor
;
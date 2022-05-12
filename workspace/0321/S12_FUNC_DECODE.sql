--유형 4 예제 : professor 테이블에서 교수의 이름과 부서번호를 출력하고 101 번 부서 중에서 이름이 "Audie Murphy" 
--교수에게 "BEST!" 라고 출력하고 101번 부서 중에서 이름이 "Audie Murphy" 교수가 아닌 나머지에는 NULL 값을 출력하세요. 
--만약 101 번 외 다른 학과에 "Audie Murphy" 교수가 있어도 "BEST!" 가 출력되면 안됩니다.
SELECT name,
        deptno,
        DECODE(deptno, 101, DECODE(name,'Audie Murphy','BEST!',NULL)) "NESTED_DECODE"
FROM professor
;
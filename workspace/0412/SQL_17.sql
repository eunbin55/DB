SELECT LPAD(ename, LEVEL * 4, '*') ename,
       level
FROM emp
--CONNECT BY : 연결조건
--PRIOR : 데이터 값을 찾는데 사용
--해당 키워드가 설정되어 있는 컬럼에서 바로 이전데이터를 찾아라

--connect by prior 자식컬럼 : 부모 -> 자식으로
--connect by prior 부모컬럼 : 자식 -> 부모
CONNECT BY PRIOR empno = mgr

--시작조건
START WITH empno = 7839;

--테이블 생성 후 추가			
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK')
;

--emp_fk테이블 중 ename에 empfk_ename_uk  생성
ALTER TABLE EMP_FK
ADD CONSTRAINT empfk_ename_uk UNIQUE (ename);

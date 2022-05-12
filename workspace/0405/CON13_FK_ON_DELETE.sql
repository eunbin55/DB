--c_test1¿¡ ÀÖ´Â ctest1_deptno_fk drop

ALTER TABLE c_test1
DROP CONSTRAINT cteat1_deptno_fk;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY (deptno)
REFERENCES c_test2(no)
ON DELETE SET NULL;

SELECT *FROM c_test1;
SELECT *FROM c_test2;

DELETE FROM c_test2 WHERE no=20;
SELECT * FROM c_test1;
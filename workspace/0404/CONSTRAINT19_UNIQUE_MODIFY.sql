UPDATE TABLE_UNIQUE
    SET TEL = '010-1235-5678'
WHERE login_id = 'TEST_ID_01';

UPDATE TABLE_UNIQUE
    SET TEL = '010-1236-5678'
WHERE login_id = 'TEST_ID_02';

ALTER TABLE TABLE_UNIQUE
MODIFY(tel UNIQUE);

SELECT * FROM TABLE_UNIQUE;

--UNIQUE �÷��� NULL�� UPDATE
UPDATE TABLE_UNIQUE
    SET TEL = NULL
;

SELECT * FROM TABLE_UNIQUE;

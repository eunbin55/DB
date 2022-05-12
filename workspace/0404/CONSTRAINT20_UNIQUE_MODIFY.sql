SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN( 'TABLE_UNIQUE2')
;

ALTER TABLE TABLE_UNIQUE2
RENAME CONSTRAINT SYS_C007601 TO TBLUNIQ02_TEL_UNQ;


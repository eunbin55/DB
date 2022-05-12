CREATE OR REPLACE PROCEDURE pro_param_in
( param1 IN NUMBER,
  param2 NUMBER,
  param3 NUMBER := 3,
  param4 number DEFAULT 4
)
IS

BEGIN
    dbms_output.put_line('param1: '||param1);
    dbms_output.put_line('param2: '||param2);
    dbms_output.put_line('param3: '||param3);
    dbms_output.put_line('param4: '||param4);
END;
/

SET SERVEROUTPUT ON;
EXECUTE pro_param_in(param1 => 1, param2 => 2);
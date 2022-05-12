SELECT '[' || TRIM(' __Oracle__ ')  ||']' AS TRIM,
        '[' || LTRIM(' __Oracle__ ')  ||']' AS LTRIM,
        '[' || LTRIM('<_Oracle_>','<_')  ||']' AS LTRIM ,
        
        '[' || RTRIM(' __Oracle__ ')  ||']' AS RTRIM,
        '[' || RTRIM('<_Oracle_>','_>')  ||']' AS RTRIM
FROM dual
;
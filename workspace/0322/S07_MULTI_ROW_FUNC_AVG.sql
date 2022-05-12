--
--SELECT 
--    COUNT(comm),
--    SUM(comm),
--    AVG(comm)
--FROM emp
--;

SELECT 
    COUNT(*),
    SUM(comm),
    AVG(NVL(comm,0))
FROM emp
;
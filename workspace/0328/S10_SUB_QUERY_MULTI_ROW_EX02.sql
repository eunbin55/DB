--ALL
SELECT name,
       grade,
       weight
FROM student
WHERE weight < ALL( SELECT weight
                    FROM student
                    WHERE grade = 2)
;

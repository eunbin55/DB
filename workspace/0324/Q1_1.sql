--2) student ���̺��� birthday �÷��� �����ؼ� �Ʒ��� ���� ������ �����ڼ���		
-- ����ϼ���		
SELECT * FROM(SELECT COUNT(*) OVER() AS TOTAL, TO_CHAR(birthday,'MM') AS MM
                FROM student)
PIVOT(count(MM) FOR MM  IN(
                                        '01' JAN,
                                        '02' FEB,
                                        '03' MAR,
                                        '04' APR,
                                        '05' MAY,
                                        '06' JUN,
                                        '07' JUL,
                                        '08' AUG,
                                        '09' SEP,
                                        '10' OCT,
                                        '11' NOV,
                                        '12' DES
                                        )
)
;
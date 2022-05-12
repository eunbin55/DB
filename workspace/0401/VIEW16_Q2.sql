--2. Inline View �� ����Ͽ� �Ʒ� �׸��� ���� Student ���̺�� department ���̺��� 
--����Ͽ� �а����� �л����� �ִ� Ű�� �ִ� ������, �а��̸��� ����ϼ���.
SELECT dname,
       MAX(height),
       MAX(weight)
FROM (SELECT t2.deptno as deptno,
             t2.dname as dname,
              t1.height as HEIGHT,
              t1.weight as weight
        FROM student t1, department t2
        WHERE t1.deptno1 = t2.deptno
    )
GROUP BY deptno, dname
;

--�������
SELECT a.dname,
       a.max_height,
       a.max_weight
FROM(
    SELECT t1.deptno1,
           MAX(t1.height) AS max_height,
           MAX(t1.weight) AS max_weight
    FROM student t1
    GROUP BY deptno1
)   JOIN department b
ON a.deptno1 = b.deptno
;
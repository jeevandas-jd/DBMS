RENAME TABLE hostel_details to hostel;


UPDATE STUDENT
SET gpa =8
WHERE student_id =103;

select * from STUDENT where gpa<8;

select * from hostel where Blok='A';



mysql> select * from STUDENT where gpa<8;
+------------+---------------+------------------+-------+-------+------+
| student_id | student_name  | department       | mark1 | mark2 | gpa  |
+------------+---------------+------------------+-------+-------+------+
|        101 | Alice Johnson | Computer Science |  85.5 |    90 | 3.75 |
|        102 | Bob Smith     | Mathematics      |    78 |  82.5 |  3.4 |
+------------+---------------+------------------+-------+-------+------+
2 rows in set (0.00 sec)

mysql> select * from STUDENT where gpa>8;
+------------+--------------+-------------+-------+-------+------+
| student_id | student_name | department  | mark1 | mark2 | gpa  |
+------------+--------------+-------------+-------+-------+------+
|        104 | David Brown  | Engineering |    92 |  94.5 |  8.2 |
+------------+--------------+-------------+-------+-------+------+
1 row in set (0.00 sec)

mysql> select * from hostel where Blok='A';
+--------+---------------+------+---------+
| std_id | sud_name      | Blok | room_no |
+--------+---------------+------+---------+
|      1 | Alice Johnson | A    |     101 |
|      4 | David Brown   | A    |     108 |
+--------+---------------+------+---------+
2 rows in set (0.00 sec)

mysql> select * from STUDENT where department='Computer Science';
+------------+---------------+------------------+-------+-------+------+
| student_id | student_name  | department       | mark1 | mark2 | gpa  |
+------------+---------------+------------------+-------+-------+------+
|        101 | Alice Johnson | Computer Science |  85.5 |    90 | 3.75 |
+------------+---------------+------------------+-------+-------+------+
1 row in set (0.00 sec)


mysql> delete from hostel where room_no=108;
Query OK, 1 row affected (0.01 sec)

mysql> select * from hostel;
+--------+----------------+------+---------+
| std_id | sud_name       | Blok | room_no |
+--------+----------------+------+---------+
|      1 | Alice Johnson  | A    |     101 |
|      2 | Bob Smith      | B    |     202 |
|      3 | Carol Williams | C    |     303 |
|      5 | Eve Davis      | B    |     205 |
+--------+----------------+------+---------+
4 rows in set (0.00 sec)

mysql> update STUDENT set department='ec' where student_name='anu';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from STUDENT;
+------------+----------------+------------------+-------+-------+------+
| student_id | student_name   | department       | mark1 | mark2 | gpa  |
+------------+----------------+------------------+-------+-------+------+
|        101 | Alice Johnson  | Computer Science |  85.5 |    90 | 3.75 |
|        102 | Bob Smith      | Mathematics      |    78 |  82.5 |  3.4 |
|        103 | Carol Williams | Physics          |    88 |  79.5 |    8 |
|        104 | David Brown    | Engineering      |    92 |  94.5 |  8.2 |
|        105 | Eve Davis      | Chemistry        |  76.5 |    80 |    8 |
|        106 | anu            | ec               |    76 |    88 |    7 |
+------------+----------------+------------------+-------+-------+------+
6 rows in set (0.00 sec)



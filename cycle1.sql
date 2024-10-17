create database STUDENT;
use STUDENT;
CREATE TABLE STUDENT(student_id int,
					student_name varchar(255),
                    department varchar(255),
                    mark1 float,
                    mark2 float,
                    cgpa float);
INSERT INTO STUDENT (student_id, student_name, department, mark1, mark2, gpa)
VALUES
    (101, 'Alice Johnson', 'Computer Science', 85.5, 90.0, 3.75),
    (102, 'Bob Smith', 'Mathematics', 78.0, 82.5, 3.40),
    (103, 'Carol Williams', 'Physics', 88.0, 79.5, 7),
    (104, 'David Brown', 'Engineering', 92.0, 94.5, 8.2),
    (105, 'Eve Davis', 'Chemistry', 76.5, 80.0, 8);

     
create table hostel_details(std_id int,
			    sud_name varchar(255),
                            Blok varchar(10),
                            room_no int);


INSERT INTO hostel_details (std_id, sud_name, Block, room_no)
VALUES
    (1, 'Alice Johnson', 'A', 101),
    (2, 'Bob Smith', 'B', 202),
    (3, 'Carol Williams', 'C', 303),
    (4, 'David Brown', 'A', 108),	
    (5, 'Eve Davis', 'B', 205);
             

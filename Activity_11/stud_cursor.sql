DELIMITER //
CREATE PROCEDURE stud_cursor()
BEGIN
DECLARE tot int;
DECLARE average int;
DECLARE s_id INT;
DECLARE s_admission_no varchar(20);
DECLARE s_name_f varchar(20);
DECLARE s_name_l varchar(20);
DECLARE s_age INT;
DECLARE s_city varchar(20);
DECLARE s_sub1 INT;
DECLARE s_sub2 INT;
DECLARE s_sub3 INT;
DECLARE C CURSOR FOR select * from student;
begin
open C;
SELECT 'Id Rollno First_name Last_name AGE city Sub1 Sub2 Sub3 ' AS '';
loop
FETCH FROM C INTO s_id,s_admission_no,s_name_f,s_name_l,s_age,s_city,s_sub1,s_sub2,s_sub3;
SELECT s_id,s_admission_no,s_name_f,s_name_l,s_age,s_city,s_sub1,s_sub2,s_sub3 AS '';
end loop;
close C;
end;
END;
//
Delimiter ;
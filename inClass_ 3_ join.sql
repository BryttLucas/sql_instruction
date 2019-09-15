-- student - enrolled join
select First_name,Last_name,coursID,grade from student s
 join enrolled e 
 on s.id = e.studentID;
 
 -- course enrolled join
 Select*
 from course c
 join enrolled e
   on c.id =e. courseID
 
  -- course enrolled join
 select* subject, name, courseID,grade
 from course c
 join enrolled e
   on c.id = e.courseID
   
   -- 3 table join!!
select * s.firstName, s.lastName, e.grade, c.subject, c.name
 from student s
 join enrolled e
 on s.id = e studentID
 join course c
 on c.id= e.courseID
 
 
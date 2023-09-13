--q2.1
insert into students(s_email,s_name,major)
values ('s1@jmu.edu','s1','IA')
  ('s2@jmu.edu','s2','IA')
  ('s3@jmu.edu','s3','ISAT')
  ('s4@jmu.edu','s4','ISAT')

--q2.1
insert into professor(p_email,p_name,office)
     ('p1@jmu.edu','p1','o1')
     ('p2@jmu.edu','p2','o2'))
     ('p3@jmu.edu', 'p3', 'o3');


--q2.1
insert into course(c_number,c_name,room,p_email)
   ('c1','postgresql','r1','p1@jmu.edu')
   ('c2','momogodb','r2','p2@jmu.edu')
   ('c3','twitter','r1','p1@jmu.edu')
   ('c4', 'facebook', 'r1', 'p3@jmu.edu')
 

--q2.1 
INSERT INTO enroll(s_email, c_number)
VALUES
  ('s1@jmu.edu', 'c1'),
  ('s2@jmu.edu', 'c1'),
  ('s3@jmu.edu', 'c1'),
  ('s4@jmu.edu', 'c2'),
  ('s2@jmu.edu', 'c3'),
  ('s3@jmu.edu', 'c3');


-- 2.5
Q1 You have to add the new prof to the records as p3@jmu.edu, this ensures that there is a valid entry for the professor in the database. You then need to add a new course record so that c4 is registered in the table. You do this so that the prof
-- can be associated with the teacher 

--2.6
-- Q2 you should modify the course table first to change the teacher of the course from p1 to p3, this ensures that the course is directly corresponding with the correct p1 professor. By doing this you also make sure that the table 
-- isn't deleted 

  -2.7
select * from Enroll 


  -- 2.8
SELECT c.c_number, COUNT(r.s_email) AS num_students
FROM course AS c
JOIN records AS r ON c.c_number = r.c_number
GROUP BY c.c_number
ORDER BY num_students DESC
LIMIT 1;

--2.9
SELECT p.p_name AS professor_name, c.c_name AS course_name
FROM professor AS p
JOIN course AS c ON p.p_email = c.p_email

--2.10 
SELECT p.p_name AS professor_name, COUNT(c.c_number) AS num_courses_taught
FROM professor AS p
LEFT JOIN course AS c ON p.p_email = c.p_email
GROUP BY p.p_name
ORDER BY num_courses_taught DESC
LIMIT 1;






--q2.1
insert into students(s_email,s_name,major)
values ('s1@jmu.edu','s1','IA')
values ('s2@jmu.edu','s2','IA')
values ('s3@jmu.edu','s3','ISAT')
values ('s4@jmu.edu','s4','ISAT')

--q2.1
insert into professor(p_email,p_name,office)
values ('p1@jmu.edu','p1','o1')
values ('p2@jmu.edu','p2','o2'))
VALUES ('p3@jmu.edu', 'p3', 'o3');


--q2.1
insert into course(c_number,c_name,room,p_email)
values ('c1','postgresql','r1','p1@jmu.edu')
values ('c2','momogodb','r2','p2@jmu.edu')
values ('c3','twitter','r1','p1@jmu.edu')
VALUES ('c4', 'facebook', 'r1', 'p3@jmu.edu')


--q2.1 
insert into records(s_email,c_number
values ('s1@jmu.edu','c1')
values ('s2@jmu.edu','c1')
values ('s3@jmu.edu','c1')
values ('s4@jmu.edu','c2')
values ('s2@jmu.edu','c3')
values ('s3@jmu.edu','c3')

/you have to add the new prof to the records as p3@jmu.edu, this ensures that there is a valid entry for the professor in the database. You then need to add a new course record so that c4 is registered in the table. You do this so that the prof
can be associated in teacher 

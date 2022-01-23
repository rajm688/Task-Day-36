SQL Task
-- creating tables
1, a, create table users (
index_no integer primary key,
userName text)

b, create table codekata (
index_no integer primary key,
topics text,
number_of_problems integer)

c, create table attendance (
student_id integer primary key,
totalClasses integer,
noOfClassesAttended integer)

d, create table topics (
topicNo integer primary key,
topicName text,
noOfTopicsCovered integer)

e, create table tasks (
tasksNo integer primary key,
totalTasks integer,
taskSubmitted integer))

f, create table company_drives (
companyid integer primary key,
companyName text)

g, create table mentors (
mentorid integer primary key,
mentorName text)

h, create table students_activated_courses (
coursesId integer primary key,
courseName text)

i, create table courses (
coursesId integer primary key,
courseName text)

-- inserting Data to tables
2 a i, insert into users (index_no, userName) values (1, "soundar");
ii, insert into users (index_no, userName) values (2, "sudhan");
iii, insert into users (index_no, userName) values (3, "sharmi");
iv, insert into users (index_no, userName) values (4, "sopna");
v, insert into users (index_no, userName) values (5, "gopal");

2 b i, insert into codekata  (index_no, topics, number_of_problems ) values (1, "beginner", 10);
ii, insert into codekata  (index_no, topics, number_of_problems ) values (2, "Arrays", 15);
iii, insert into codekata  (index_no, topics, number_of_problems ) values (3, "strings", 16);
iv, insert into codekata  (index_no, topics, number_of_problems ) values (4, "basics", 20);
v, insert into codekata  (index_no, topics, number_of_problems ) values (5, "I/O", 25);

2 c i, insert into tasks (tasksNo , totalTasks, taskSubmitted ) values (1, 20, 10)
i, insert into tasks (tasksNo , totalTasks, taskSubmitted ) values (2, 20, 12)
i, insert into tasks (tasksNo , totalTasks, taskSubmitted ) values (3, 20, 11)
i, insert into tasks (tasksNo , totalTasks, taskSubmitted ) values (4, 20, 14)
i, insert into tasks (tasksNo , totalTasks, taskSubmitted ) values (5, 20, 15)

2 d, insert into company_drives (companyid ,companyName )  values (1, "CTS"),(2,"TCS"),(3, "zoho"),(4,"BigBang"),(5,"allsec")
2 e, insert into attendance  (student_id ,totalClasses,noOfClassesAttended  )  values (1,45,40),(2,45,44),(3, 45,42),(4,45,41),(5,45,35)
2 f, insert into topics   (topicNo  ,topicName ,noOfTopicsCovered   )  values (1,"HTML",5),(2,"CSS",4),(3, "Bootstrap",4),(4,"Javascript",2),(5,"MongoDB",1)
2 g, insert into mentors (mentorid, mentorName)  values (1,"Lavish"),(2,"Ragav"),(3, "Mariappan"),(4,"divya"),(5,"gugan")
2 h, insert into students_activated_courses (coursesId , courseName ) values (1, "Full Stack"),(2,"Deep Learning"),(3,"Data science"),(4,"Ethical Hacking"),(5,"Mern Stack")
2 i, insert into courses  (coursesId , courseName ) values (1, "Full Stack"),(2,"Deep Learning"),(3,"Data science"),(4,"Ethical Hacking"),(5,"Mern Stack")

-- get number problems solved in codekata by combining the users

3 select userName, number_of_problems from users inner join codekata on users.index_no = codekata.index_no 

-- display the no of company drives attended by a user

4 select userName, companyName  from users inner join company_drives  on users.index_no = companyid
 
-- combine and display students_activated_courses and courses for a specific user groping them based on the course

5 select userName, courseName   from users inner join students_activated_courses  on users.index_no = coursesId   

-- list all the mentors

6 select mentorName from mentors

-- list the number of students that are assigned for a mentor

7  select userName , mentorName  from users inner join mentors  on index_no = mentorid 





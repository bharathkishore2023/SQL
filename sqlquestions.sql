-- --database created-- 
create database perficient;
use perficient;
-- table creation-- 
create table Student(RollNo int,studentName char(20),Gender char(7),Dob date,
	total Integer,Average Integer,Grade char(2));

-- --add a new attribute "RollNo" to table    
Alter table Student add RollNo Integer;

/* display table */

select * from Student;

-- insert values into the table 

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade)
values(1,"Anand",'M','2001-05-03',407,81.4,'B');

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade)values 
(2,"Ajay","M",'2001-04-02',400,80,'C');

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(3,"Bharath","M",'2000-11-05',355,71,"D");

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(4,"Shivani","F",'2001-05-06',476,95.2,"A");

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(5,"Sarchin","M",'2001-12-23',400,80,"C");

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(6,"Dhoni","M",'2000-11-17',415,83,"B");

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(7,"kamala","F",'2001-12-05',400,80,"C");

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(8,"Varun","M",'2000-11-11',470,94,"A");

insert  into Student(RollNo,StudentName,Gender,Dob,total,Average,Grade) values 
(9,"Rekha","F",'2000-10-15',490,98,"A");

/* display table after insert values*/
select * from Student;

/* display the unique total values count*/
select Count(distinct total) from Student;

-- Display the roll no and name of male students 
select RollNo,StudentName from Student where gender="M";

-- Display the rollNo and name of male students who scored above 400
select RollNo,StudentName from Student where gender="M" and total>400;

-- display the details of students who scored between 400 and 450
select * from Student where total between 400 and 450;

-- Display the names of students who have scored the grade A B or C from the table
select StudentName from Student where grade="A" or grade="B" or grade="C";

-- Display the female students who have scored grade A or B
select StudentName from Student where gender="F" and (grade="A" or grade="B");

-- Display the roll number of students scored other than A or B grade
 select RollNo from Student where grade!="A" and grade!="B";
 
 -- Display the names of students who born in the year of 2001
 select StudentName from Student where year(Dob)=2001;
 
 -- Display names of students born in the month of november 2001
 select StudentName from Student where month(Dob)=11 and year(Dob)=2000;
 
 -- Display the name of students born in the year of 2000 but not in the month of november
 select StudentName from Student where year(Dob)=2000 and month(Dob)!=11;
 

 -- Display the different grades obtained by the students
 select distinct grade from Student;
 
 -- Display the name, average and grade of all female students in the following format
 select concat(StudentName," has scored an average of " ,Average ," with grade ",grade) as studInfo from Student where gender="F";
 
 -- 16.Assume there is no average column in the table and the
--  Total attribute is the expression of 5 subjects mark. Display the name and average marks of all the female students.
select Studentname, cast((total/5) as decimal(10,2)) as average from Student where gender="F";

-- 17.Display names of students whose name starts with 'A'
select Studentname from student where Studentname like "A%";
 
  -- 18.Display the roll number, name, total of the students whose starts with 'A' and ends with 'd'
  select RollNo,StudentName,total from Student where StudentName like "A%d";
  
   -- 19. Display the details of students whose name is exactly 5 charcters in length
   select * from Student where length(StudentName)=5;
   
   -- 20.Display the details of students whose name has 'i'
   select * from Student where StudentName like "%A%";
   
   -- 21.Display the names of students not starting with A or S
   select StudentName from Student where studentName not like "A%" and studentName not like "S%";
   
   -- 22.Display names of students whose birth date is 5
   select StudentName from student where dayofmonth(dob)=5;
   
   -- 23.Display the names of students in the table in alphabetical order
   select StudentName from Student order by Studentname;
   
   -- 24.Display the name and total of female students in descending order of total
   select studentname,total from student where gender="F" order by total desc;
   
  -- 25. Display the name, grade and total of all the students who have scored 
--   above 395 in descending order of their grades and ascending order of their name
	select Studentname,grade,total from student where total>395 order by grade desc,studentname asc;
    
    -- 26. Find the sum of the total marks obtained by students who have scored the grade 'A'
    select sum(total) as totalmarks from Student where grade="A";
    
    -- 27. Display the average of the average marks scored by 'A' graders.
    select avg(average) as averagemarks from Student where grade="A";
    
    -- 28. Display the total number of students in the table
    select count(*) as numofStudents from Student;
    
    -- 29. Display the number of different grades available in the table
    select distinct grade as uniqueGrades from Student; 
    
    -- 30. Display the details of the student(s) who is the youngest in the table
    select StudentName from Student order by dob desc limit 1;
    
    -- print the output for the following
      SELECT MAX(Dob), MIN(Dob), SUM(Total)
    FROM `Student`
    WHERE Dob BETWEEN '2001-01-01' AND '2001-12-31';
    
    -- output
--    2001-12-23	2001-04-02	2083 

/*
========================================
31.2 
	SELECT COUNT(*), MAX(Total), MIN(Total)
    FROM `Student`
    WHERE Grade IN ('A', 'B');
*/ 

SELECT COUNT(*), MAX(Total), MIN(Total)
    FROM `Student`
    WHERE Grade IN ('A', 'B');    
    
    /* output
    5	490	407
    */
-- ===============================================
/* 31.3
  SELECT SUM(Total + 5)
    FROM `Student`
    WHERE Grade='D';

*/ 
 SELECT SUM(Total + 5)
    FROM `Student`
    WHERE Grade='D';
 /* output
   360
   =============================================
    */
    /*
     SELECT AVG(Total / 5)
    FROM `Student`;
    */
     SELECT AVG(Total / 5)
    FROM `Student`;
     /*
     output :
     84.73333333
     ===============================================
    */
    
    -- 32. Display the count of gender based on gender.
    select count(case when gender="M" then 1 end) as male,
    count(case when gender="F" then 1 end) as female
    from student;
    
    -- 33. Display the maximum and minimum marks obtained by the students grade wise
    select max(total),min(total),grade from Student group by grade; 
    
    -- 34. Display the maximum and minimum total of the students born in the year 2001 based on their grade.
    select max(total),min(total),grade from Student  where year(dob)=2001 group by grade;
    
    -- 35. Display the number of students grade wise where grades include A and B.
    select count(case when grade="A" then 1 end) as gradeA,
			count(case when grade="B" then 1 end) as gradeB from Student;
            
	-- 36. Display the number of students grade wise where number of students in each grade is more than two.
         select grade,count(grade) from Student group by grade having count(grade)>2;
         
        
         -- 37. Update Varun's date of birth to 12th November 2000.
         -- while trying to update ask for safe updates warning (can be resolved by)
          set sql_safe_updates=0;
          
         update Student set dob='2000-11-12'  where Studentname="varun";
         
         -- check whether update is done or not
         select * from Student;
         
         -- 38. Increment Sarchin's mark by 10 and alter his grade to B
         update Student set total=total+10,grade="B" where Studentname="Sarchin";
         
         -- 39. Create a view V1 which is an exact copy of the Student table. Display it after creation.
         -- query for create view
         create view V1 as
         select * from Student ;
         
         -- query for display view
		    select * from V1;
         
         -- 40. Create a view V2 which contains roll number and name of all the 'A' graders.
         create view V2 as select RollNo,StudentName from Student where grade="A" ;
         
          -- 41. Display the contents of the new view V2.
		    select * from V2;
            
            -- 42. Create a view V3 that has a a copy of roll number and name of all the 'A' graders
            -- but with new column names. Display the view after creation.
            create view V3  as select RollNo as newRollNo,Studentname as newName from Student where grade="A";
            
          --   Display the contents of the new view V3.
		    select * from V3;
            
            -- 43. Add a new column age of appropriate data type to the existing table and fill the age.
            Alter table Student add age int;
			Update Student set age= Date_format(from_days(datediff(now(),dob)),"%Y");
            select * from Student;
            
            
            -- 44. Remove the column age from the Student table.
            alter table Student drop age;
    
    -- 45. Alter the Average column to FLOAT(10, 2).
    alter table Student modify column Average float(10,2);
    
    
    -- 46. Display the value of Total / 5 for every female student and give a new column name.
    alter table Student add column newAverage int;
    update Student set newAverage=total/5 where Gender="F";
    
    -- ========================================================== NEW TABLE =================================
    create table Personal(Roll int,Parent char(20),Address char(25),phone_no numeric(15));
    drop table Personal;
    
    -- Insert Values
    insert into Personal(Roll,Parent,Address,phone_no) values (2,"ABC","1st Cross Street",12345678);
    insert into Personal(Roll,Parent,Address,phone_no) values (3,"XYZ","2nd Cross Street",41234561);
    insert into Personal(Roll,Parent,Address,phone_no) values (4,"PQR","3rd Cross Street",12370171);
    insert into Personal(Roll,Parent,Address,phone_no) values (7,"LMN","4th Cross Street",40007714);
    insert into Personal(Roll,Parent,Address,phone_no) values (9,"ABCD","5th Cross Street",	56789101);
    
    -- 47. Display the student name, parent name and address of all the students
    select Student.studentName, Personal.parent,Personal.address from Student inner join Personal where Student.RollNo=Personal.Roll;
    
    -- 48. Display the roll number, student name and parent name of all 'A' graders.
    select Personal.parent,Student.RollNo,Student.studentName from Student inner join personal on personal.Roll=Student.RollNo where grade="A";
    
    -- 49. Remove the details of those students from the Student table who have got 'D' grade.
    delete from Student where grade="D";
    select * from Student;
    
    -- 50. Remove the Student table from the database.
    drop table Student;
    
    
    
    
create database Mypage;
show databases;
use Mypage;
create table subscribers (email varchar(255),
   Passcode varchar(255) 
);
insert into subscribers(email,Passcode)values("abc@gmail.com","abc@123");
select * from subscribers;



    -- CREATE TABLE Student(
--         Roll INT NOT NULL,
--         Sname char(15),
--         Gender char(2),
--         Dob DATE,
--         Total INT,
--         Average NUMERIC(10, 2),
--         Grade char(2)
--     );
--      INSERT INTO `Student`
--     (`Roll`, `Sname`, `Gender`, `Dob`, `Total`, `Average`, `Grade`)
--     VALUES
--     (1, 'Anand', 'M', '2001-05-13', 407, 81.4, 'B');
use Mypage;
create table Student(Roll int not null,StudentName char(20),Gender char(2),Dob Date,Total int,Average Numeric(10,2),Grade char(2));
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(1,'Anand','M','2001-05-13',407,81.4,'B');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(2,'Ajay','M','2001-04-02',407,80,'C');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(3,'Bharath','M','2000-11-05',355,71,'D');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(4,'Shivani','F','2001-05-06',476,95.2,'A');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(5,'Sarchin','M','2001-12-23',400,80,'C');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(6,'Anand','M','2001-05-13',407,81.4,'B');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(7,'Kamala','F','2001-12-05',407,80,'C');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(8,'Varun','M','2001-11-11',470,94,'A');
insert into Student (Roll,StudentName,Gender,Dob,Total,Average,Grade)values(9,'Rekha','F','2000-10-15',490,98,'A');
Select * from Student;
SET SQL_SAFE_UPDATES = 0;
Update Student set Total=400 where StudentName='Kamala';
Select Studentname,Gender from Student;

Select Distinct Total from Student;
Select Roll,StudentName from Student where Total between 400 and 450 and Gender='M';
Select Roll,StudentName from Student where Grade='A' or Grade='B' or Grade='C';
Select * from Student;
Select  StudentName from Student where Gender='F' and (Grade='A'or Grade='B'); 
Select Roll,StudentName from Student where Not( Grade='A' or Grade='B' ); 
Select StudentName from Student where Year(Dob)=2001;
Select StudentName from Student where Not Month(Dob)=11 && year(Dob)=2001;
Select distinct Grade from Student;
/*Shivani has scored an average of 95.2 with grade A.*/
Select StudentName,avg(Average) as "average marks" from Student where Gender='F';
/*select StudentName from Student as Stude*/
use Mypage;
create table salesman(salesman_id numeric(5),salesmanname varchar(20),city varchar(15),commission numeric(10,4));
drop table salesman;
select * from salesman;
insert into salesman(salesman_id,salesmanname,city,commission) values(5001,"william Dev","Florida",1.12);
insert into salesman(salesman_id,salesmanname,city,commission) values(5002,"Bob Robert","Paris",0.91);

create table customers(customer_id numeric(5),cust_name varchar(20),city varchar(20),grade numeric(6),salesman_id numeric(6));
insert into customers(customer_id,cust_name,city,grade,salesman_id) values(3002,"Bok Lee","New York",100,5001);
insert into customers(customer_id,cust_name,city,grade,salesman_id) values(3007,"Brian C","Florida",200,5001);
select salesman.salesman_id,salesman.salesmanname from salesman as s inner join customers as cn where s.salesman_id=cn.salesman_id;
select salesman.salesman_id,salesmanname,cust_name from customers inner join salesman on  salesman.salesman_id=customers.salesman_id;
-- select salesman.salesman_id,name,cust_name from customers inner join salesman on  salesman.salesman_id=customers.salesman_id;
create table hackers(hacker_Id numeric(7),hacker_name char(20));
insert into hackers(hacker_Id,hacker_name) values(77726,"Becky");
insert into hackers(hacker_Id,hacker_name) values(27205,"Dave");
insert into hackers(hacker_Id,hacker_name) values(34567,"Bharath");
insert into hackers(hacker_Id,hacker_name) values(8439,"Archie");
select * from hackers;
create table difficulty(difficulty_level numeric(2),score numeric(4) );
insert into difficulty(difficulty_level,score) values(1,20);
insert into difficulty(difficulty_level,score) values(2,30);
insert into difficulty(difficulty_level,score) values(3,40);
insert into difficulty(difficulty_level,score) values(4,50);
insert into difficulty(difficulty_level,score) values(5,80);
insert into difficulty(difficulty_level,score) values(6,100);
insert into difficulty(difficulty_level,score) values(7,120);
update difficulty set score=60 where difficulty_level=4;
SET SQL_SAFE_UPDATES=0;

create table challenges(challenge_id numeric(7),difficulty_level numeric(3));
insert into challenges(challenge_id,difficulty_level) values(4810,4);
insert into challenges(challenge_id,difficulty_level) values(21089,1);
insert into challenges(challenge_id,difficulty_level) values(71055,2);

create table submission(submission_id numeric(7),hacker_id numeric(7),challenge_id numeric(7),score numeric(4));
insert into submission(submission_id,hacker_id,challenge_id,score) values (65300,77726,21089,10);
insert into submission(submission_id,hacker_id,challenge_id,score) values (8941,27205,4810,10);
insert into submission(submission_id,hacker_id,challenge_id,score) values (7344,8439,4810,10);
update submission set score=50 where submission_id=8941;
insert into submission(submission_id,hacker_id,challenge_id,score) values (2721,8439,4810,36);
insert into submission(submission_id,hacker_id,challenge_id,score) values (65300,77726,21089,10);
insert into submission(submission_id,hacker_id,challenge_id,score) values (97436,34567,21089,20);
insert into submission(submission_id,hacker_id,challenge_id,score) values (97436,34567,71055,30);
select * from submission;
update submission set submission_id=97437 where score=30;

/*select hacker_id,hacker_name from */










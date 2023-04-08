select substr("bharath",-7);
create database w3schools;
use w3schools;
create table student(Roll int,stud_no varchar(20));
alter table student rename column stud_no to stud_name;
create table Marks(Roll int,english int,tamil int,maths int,science int,social int);
insert into student(Roll,stud_name)
values(10901,"Anbu"),(10902,"Bk"),(10903,"Cellapandi"),(10904,"Dayalan"),(10905,"Ezhil");
insert into Marks(Roll,English,tamil,maths,science,social)
values(10901,95,95,95,95,95),(10902,100,99,100,100,100),(10903,95,75,100,99,99),(10904,95,98,100,95,100),(10905,98,99,100,99,100);

select s.Roll,s.stud_name,sum(m.english)+
							sum(m.tamil)+
                            sum(m.science)+
                            sum(m.maths)+
                            sum(m.social)  as "total"
 from student s inner join Marks m on s.Roll=m.Roll group by Roll order by total desc ;
 
 select s.Roll,s.stud_name,count(case when m.english=100 then 1 end)+
							count(case when m.tamil=100 then 1 end)+
                            count(case when m.maths=100 then 1 end)+
							count(case when m.science=100 then 1 end)+
                            count(case when m.social=100 then 1 end) as "No. of centum" from student s inner join Marks m on s.Roll=m.Roll group by Roll order by Roll ;
				
                -- average marks of each subject
                 select avg(english) as "avg_english",avg(tamil) as "avg_tamil",
                 avg(maths) as "avg_maths",avg(science) as "avg_science",avg(social) as "avg_social" from marks;
                 
                 -- overall average
                                 select (sum(english)+sum(tamil)+sum(maths)+sum(science)+sum(social))/25 from marks;
                                 
-- =======================================================================================
                                 use practice1;
                                 show tables;
                                 select * from orders;
                                 
         -- 6
         
	with t as (select p.product_name,p.category,p.sub_category,c.segment,count(o.order_id) as "counts" from
    product p inner join  orders o on o.order_id=p.order_id inner join customer c on c.order_id=o.order_id  
    group by c.segment,p.product_name,p.category,p.sub_category 
    order by counts desc)
    select product_name,category,sub_category,segment,counts from(select * ,rank() 
    over (partition by segment order by counts desc )as "ranks" from t) y where ranks=1;
 
 
    -- 12
    
    with t as (select c.customer_name,o.state,count(c.order_id )as "counts_of_order" from customer c inner join orders o
    on c.order_id=o.order_id group by o.state,c.customer_name order by counts_of_order desc )
    select customer_name,state,counts_of_order from(
    select * ,row_number() over (partition by state order by counts_of_order desc ) as "ranks" from t) y where ranks=1;
    
    -- ======================================================================
    
    with t as (select c.customer_name,c.segment,count(c.order_id) as "counts_of_order" from customer c inner join orders o 
    on  o.order_id=c.order_id group by c.customer_name,c.segment order by counts_of_order desc)
    
    select customer_name,segment,counts_of_order from (
    select * ,rank() over (partition by segment order by counts_of_order desc) as "ranks" from t) y where ranks<=3;
         
         -- ====================================================================================================================
         show databases;
		use w3schools;
        select * from student;
        select s.stud_name,s1.stud_name  from student s,student s1 where s.Roll=s1.Roll;
        
        select s.stud_name,m.social from student s cross join marks m;
        
        truncate table student;
								
		update student set stud_name="bk" where roll=10902;
        commit;
        update student set stud_name="celciya" where roll=10903;
        rollback;
        set sql_safe_updates=0;
        
-- ============================================================================================================
				-- implementing any in sql
                
			create table student1(Roll int,stud_no varchar(20));
alter table student1 rename column stud_no to stud_name;
create table Marks1(Roll int,english int,tamil int,maths int,science int,social int);
insert into student1(Roll,stud_name)
values(9901,"Anbu"),(9902,"Bk"),(9903,"Cellapandi"),(9904,"Dayalan"),(9905,"Ezhil");
insert into Marks1(Roll,English,tamil,maths,science,social)
values(9901,95,95,95,95,95),(9902,100,99,100,100,100),(9903,95,75,100,99,99),(9904,95,98,100,95,100),(9905,98,99,100,99,100);

update  marks1 set tamil=90 where roll=9905;
select  s.stud_name,m1.tamil,m2.tamil from Marks m1 inner join Student s on m1.roll=s.roll inner join 
Marks1 m2 on m1.tamil=m2.tamil where m1.tamil< any(
select tamil from Marks1 group by tamil order by tamil desc
);

alter table marks add column  total int;
alter table marks  drop column total;
-- ====================================================================================================

select stud_name from student where exists(
select Roll from student where roll=10903 );

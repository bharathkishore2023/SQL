show databases;
use  Perficient1;
/*
7. Write a SQL statement to join the tables salesman, customer and orders 
so that the same column of each table appears once and only the relational rows are returned. 

*/
select * from orders natural join salesman natural join customer;

/*
8. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. 
The results should be sorted by ascending customer_id.

*/
select customer.cust_name,customer.city,customer.grade,salesman.sales_name,salesman.city from customer inner join 
salesman on customer.salesman_id=salesman.salesman_id 
order by customer.customer_id asc;
-- ============================================================================================================
create database perficient5;
use perficient5;

-- creating subscription table

create table subscription(subscriber_id int,subscriber_name varchar(20),channel_id int);
insert into subscription(subscriber_id,subscriber_name,channel_id)
values(101,"Bharath",5001),(103,"kishore",5003),(104,"Elon musk",5003),(105,"Bruce lee",5001);

select * from subscription;

-- creating owner table

create table owner(ownerId int,owner_name varchar(20));
insert into owner(ownerId,owner_name)
values(1,"Rishi"),(2,"Premanand"),(3,"pragadeesh"),(4,"JR");

-- creating channel table
create table channels(channel_id int,channel_name varchar(25),owner_id int);
insert into channels(channel_id,channel_name,owner_id)
values(5001,"Rishipedia",1),(5003,"LMES",2),(5005,"Theneer idaivelai",3),(5006,"Ennuvathellam Uyarvu",4),(5007,"Theneer idaivelai science",3);

select * from channel;

select subscription.subscriber_name AS "subscriber Name",channels.channel_name as "channel name",owner.owner_name 
from subscription inner join channels on subscription.channel_id=channels.channel_id inner join  owner on owner.ownerId=channels.owner_id order by channels.channel_name,subscription.subscriber_name;

-- =========================================================================================================================
-- creating new Databases
create database perficient6;
use perficient6;

-- creating new table
create table Clients(ClientId int,clientName varchar(10));

-- inserting values into the clients table
insert into Clients(ClientId,ClientName)
values(1,"O_A"),(2,"O_B"),(3,"O_C"),(4,"O_D"),(5,"O_E");

select * from clients;

-- creating table Bank
create table Bank(BranchId int,BranchName varchar(10),ClientId int);

-- inserting values into the Bank Table
insert into Bank(BranchId,BranchName,ClientId)
values(1,"B_1",1),(2,"B_2",2),(3,"B_3",3),(4,"B_4",4),(5,"B_5",5);

-- creating Bill table
create table Bill(InvoiceId int,BillYear Date,BarnchId int,Amount int);
alter table Bill rename column barnchId to branchId; 
alter table Bill modify column BillYear datetime;
-- inserting values into the table
insert into Bill(InvoiceId,BillYear,BranchId,Amount)
values(1,'2012-01-01',1,100),(2,'2012-01-01',2,200),(3,'2012-01-01',3,300),(4,'2012-01-01',4,400),
(5,'2012-01-01',5,500),(6,'2012-01-01',1,900),(7,'2012-01-01',1,900);

select * from Bill;

select * from Bill inner join Bank on Bank.branchId=Bill.branchId inner join Clients on Bank.ClientId=Clients.ClientId where Clients.clientName="O_A" ;
-- ============================================================================================================
create database perficient7;
use perficient7;

create table Items(Item_no int,order_date date,cust_Id int,salesman_Id int,Amount int);
insert into Items(Item_no,order_date,cust_Id,salesman_Id,Amount)
values (10,'1997-08-02',4,2,540),(20,'1996-01-30',4,8,1800),(30,'1994-07-14',9,1,460),(40,'1995-01-29',7,2,2400),(50,'1995-03-02',6,7,600),(60,'1995-0-02',6,7,720),(70,'1995-05-06',6,7,150);
select * from Items;

create table Clients(Cust_Id int,cust_Name varchar(15),city varchar(15),IndustryType char(1));
insert into Clients(Cust_Id,cust_Name,city,IndustryType)
values(4,"Samsung","Delhi","J"),(6,"Panasonic","Orange","J"),(7,"Nokia","Jamshedpur","B"),(9,"Apple","Jamshedpur","B");
select * from Clients;

create table salesman(salesman_id int,sales_name varchar(20),age int,salary int);
insert into salesman(salesman_id,sales_name,age,salary)
values(1,"Amir",61,140000),(2,"Balbir",34,44000),(5,"Chander",34,40000),(7,"Damdar",41,52000),(8,"Kumar",57,115000),(11,"Jaggu",38,38000);

-- question:
-- 1.get the names of all salespersons that have an order with samsung
-- query
select salesman.sales_name from salesman inner join items on salesman.salesman_id=Items.salesman_id inner join Clients on Clients.cust_Id=Items.cust_Id 
where clients.cust_name="samsung";

-- question:
-- 2.get the names of all the salespersons that do not have any order with samsung

select salesman.sales_name from salesman where salesman.sales_name not in
( select salesman.sales_name from salesman inner join items 
on salesman.salesman_id=Items.salesman_id inner join Clients 
on Clients.cust_Id=Items.cust_Id where Clients.cust_name ="samsung");

-- question:
-- 3. question 3 get the names of salespersons that have 2 or more orders
select salesman.sales_name from salesman inner join items on salesman.salesman_id=Items.salesman_id group by Items.salesman_id having count(*)>=2;

-- question:
-- 4. find the third highest salary
select salesman.sales_name,salesman.salary from salesman order by salesman.salary desc limit 1 offset 2;

-- question:
-- 5.find the third lowest salary
select salesman.sales_name,salesman.salary from salesman order by salesman.salary  limit 1 offset 2;

-- ==================================================================================================
 
create table A(A int);
insert into A(A)values(1),(2),(3),(4);

create table B(B int);
insert into B(B)values(3),(4),(5),(6);

-- question:
-- what will be the query and result of inner join between tables A and B.

select * from A inner join B on A.A=B.B;

-- question:
-- what will be the query and result of full outer join between tables A and B.
select 





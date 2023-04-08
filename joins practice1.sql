use perficient;
-- creating salesman table

create table salesman(salesman_id int,salesmanName char(20),city char(15),commission int);

-- inserting values to salesman table

insert into salesman(salesman_id,salesmanName,city,commission)
 values(5001,"James Hoog","New York",0.15);
 
 insert into salesman(salesman_id,salesmanName,city,commission)
 values(5002,"Nail Knite","Paris",0.13);
 
 insert into salesman(salesman_id,salesmanName,city,commission)
 values(5005,"Pit Alex","London",0.11);
 
  insert into salesman(salesman_id,salesmanName,city,commission)
 values(5006,"Mc Lyon","Paris",0.14);
 
  insert into salesman(salesman_id,salesmanName,city,commission)
 values(5007,"Paul Adam","Rome",0.13);
 
  insert into salesman(salesman_id,salesmanName,city,commission)
 values(5003,"Lauson Hen","San Jose",0.12);
 
 -- few update and alter due to improper :
 
 select * from salesman;
 update salesman set salesman_id=5005 where city="London";
 set sql_safe_updates=0;
 alter table salesman modify column commission float(10,2);
 delete from salesman;
 delete from customer;
 
 -- creting customer table
 
 create table customer
 (customer_id int,cust_name char(20),city char(15),grade int,salesman_id int);
 
 -- inserting values into customer table
 
 insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3002,"Nick Rimando","New York",100,5001);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3007,"Brad Davis","New York",200,5001);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3005,"Graham Zusi","California",200,5002);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3008,"Julian Green","London",300,5002);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3004,"Fabian Johnson","Paris",300,5006);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3009,"Geoff Cameron","Berlin",100,5003);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3003,"Jozy Altidor","Moscow",200,5007);
 
   insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3001,"Brad Guzan","London",200,5005);
 
 -- question
--  From the following tables
--  write a SQL query to find the salesperson and customer 
--  who reside in the same city. Return Salesman, cust_name and city.


 -- viewing updated table after insert values
 
 select * from customer;
 select * from salesman;
 
 -- query for requirement
 
 select salesman.salesmanName,customer.cust_name,salesman.city from salesman 
   join customer where salesman.city=customer.city;
 
 -- creating new databases
 
 create database perficient1;
 use perficient1;
 
 -- creating table order
 
 create table orders(ord_no int,purch_amt decimal(10,2),ord_date date,customer_id int,salesman_id int);
 
 -- inserting values into order table
 
 insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70001,150.5,'2012-10-05',3005,5002);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70009,270.65,'2012-09-10',3001,5005);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70002,65.26,'2012-10-05',3002,5001);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70004,110.5,'2012-08-17',3009,5003);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70007,948.5,'2012-09-10',3005,5002);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70005,2400.6,'2012-07-27',3007,5001);
 
   insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70008,5760,'2012-09-10',3002,5001);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70010,1983.43,'2012-10-10',3004,5006);
 
  insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id) 
 values(70003,2480.4,'2012-10-10',3009,5003);
 select * from orders;
 
 -- creating customer table
 create table customer(customer_id int,cust_name char(20),city char(15),grade int,salesman_id int);
 
 -- inserting values into customer
 
 insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3002,"Nick Rimando","New York",100,5001);
 
 insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3007,"Brad Davis","New York",200,5001);
 
 insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3005,"Graham Zusi","California",200,5002);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3008,"Julian Green","London",300,5002);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3004,"Fabian Johnson","Paris",300,5006);
 
  insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3009,"Geoff Cameron","Berlin",100,5003);
 
 insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3003,"Jozy Altidor","Moscow",200,5007);
 
 insert into customer(customer_id,cust_name,city,grade,salesman_id) 
 values(3001,"Brad Guzan","London",0,5005);
 
 select * from customer;
 
  -- creating salesman table
  create table salesman(salesman_id int,sales_name char(20),city char(15),commission decimal (4,2));
select * from salesman;
  -- inserting values into salesman table
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5001,"James hoog","New York",0.15);
  
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5002,"Nail Knite","Paris",0.13);
  
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5005,"Pit Alex","London",0.11);
  
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5006,"Mc Lyon","Paris",0.14);
  
   insert into salesman(salesman_id,sales_name,city,commission)
  values(5007,"Paul Adam","Rome",0.13);
  
   insert into salesman(salesman_id,sales_name,city,commission)
  values(5003,"Lauson Hen","San Jose",0.12);
  
  select * from salesman;
 -- question
  /* 
  From the following tables write a SQL query to find those orders
  where the order amount exists between 500 and 2000. 
  Return ord_no, purch_amt, cust_name, city.
  */
 
 -- query:
 select orders.ord_no,orders.purch_amt,customer.cust_name,customer.city from orders inner join customer 
 on orders.customer_id=customer.customer_id
  where orders.purch_amt between 500 and 2000;
  
  /*
  6. From the following tables write a SQL query to find the details of an order.
  Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
  
  */
  -- query:
	select orders.ord_no,orders.ord_date,orders.purch_amt,customer.cust_name,customer.grade,salesman.sales_name,salesman.commission
    from orders inner join customer on orders.customer_id=customer.customer_id 
    inner join salesman on salesman.salesman_id=orders.salesman_id;
  
  -- =============================================================================================
  
  create database perficient2;
  use perficient2;
  create table customer(cust_id int,cust_name char(20),city char(15),grade int,salesman_id int);
  delete from customer;
  -- inserting values into the table
  insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3002,"Nick Rimando","New York",100,5001);
  
 insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3007,"Brad Davis","New York",200,5001); 
  
  insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3005,"Graham Zusi","California",200,5002);
  
    insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3008,"Julian Green","London",300,5002);
  
    insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3004,"Fabian Johnson","Paris",300,5006);
  
   insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3009,"Geoff Cameron","Berlin",100,5003);
  
   insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3003,"Jozy Altidor","Moscow",200,5007);
  
   insert into customer(cust_id,cust_name,city,grade,salesman_id) 
  values(3001,"Brad Guzan","London",0,5005);
  
  select * from customer;
  
  -- creating salesman table
  create table salesman(salesman_id int,sales_name char(20),city char(15),commission decimal (4,2));
select * from salesman;
  -- inserting values into salesman table
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5001,"James hoog","New York",0.15);
  
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5002,"Nail Knite","Paris",0.13);
  
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5005,"Pit Alex","London",0.11);
  
  insert into salesman(salesman_id,sales_name,city,commission)
  values(5006,"Mc Lyon","Paris",0.14);
  
   insert into salesman(salesman_id,sales_name,city,commission)
  values(5007,"Paul Adam","Rome",0.13);
  
   insert into salesman(salesman_id,sales_name,city,commission)
  values(5003,"Lauson Hen","San Jose",0.12);
  
  /*
  3. From the following tables write a SQL query to find
  the salesperson(s) and the customer(s) he represents.
  Return Customer Name, city, Salesman, commission.
  */
  
  -- query
  select customer.cust_name,customer.city,salesman.sales_name,salesman.commission from customer
  inner join salesman where customer.salesman_id=salesman.salesman_id;
  
  create database perficient3;
  use perficient3;
  create table customer(customer_id int,cust_name char(20),city char(15),grade int,salesman_id int);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3002,"Nick Rimando","New York",100,5001);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3007,"Brad Davis","New York",200,5001);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3005,"Graham Zusi","California",200,5002);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3008,"Julian Green","London",300,5002);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3004,"Fabian Johnson","Paris",300,5006);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3009,"Geoff Cameron","Berlin",100,5003);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3003,"Jozy Altidor","Moscow",200,5007);
  
  insert into customer(customer_id,cust_name,city,grade,salesman_id)
  values(3001,"Brad Guzan","London",0,5005);
  
  select * from customer;
  
  -- creating salesman table
  create table salesman(salesman_id int,sales_name char(20),city char(15),commission decimal(5,2));
  
  -- inserting values into salesman table
  insert into salesman(salesman_id,sales_name,city,commission) 
  values(5001,"James Hoog","New York",0.15);
  
  insert into salesman(salesman_id,sales_name,city,commission) 
  values(5002,"Nail Knite","Paris",0.13);
  
  insert into salesman(salesman_id,sales_name,city,commission) 
  values(5005,"Pit Alex","London",0.11);
  
   insert into salesman(salesman_id,sales_name,city,commission) 
  values(5006,"Mc Lyon","Paris",0.14);
  
   insert into salesman(salesman_id,sales_name,city,commission) 
  values(5007,"Paul Adam","Rome",0.13);
  
   insert into salesman(salesman_id,sales_name,city,commission) 
  values(5003,"Lauson Hen","San Jose",0.12);
  
  select * from salesman;
  
  -- question
  /*
  4.From the following tables write a SQL query to find salespeople who received 
  commissions of more than 12 percent from the company. 
  Return Customer Name, customer city, Salesman, commission.
  */
  
  select customer.cust_name,customer.city,salesman.sales_name,commission from customer 
  inner join salesman on customer.salesman_id=salesman.salesman_id where salesman.commission>0.12;
  
  
  /*
  5. From the following tables write a SQL query to locate those salespeople
  who do not live in the same city where their customers live 
  and have received a commission of more than 12% from the company. 
  Return Customer Name, customer city, Salesman, salesman city, commission. 
  
  */
  
  -- query :
  select  customer.cust_name,customer.city,salesman.sales_name,salesman.city,salesman.commission from customer
inner join salesman on customer.salesman_id=salesman.salesman_id where salesman.commission>0.12 and 
customer.city !=salesman.city;

  -- ============================================================================
  
  
use Training_19Sep18_Pune



select * from book_Master
select Book_Name from Book_Master
select DB_NAME()
select DB_NAME() as MyCurrentDBs


sp_help



select @@VERSION
go
select getDate()



sp_help Book_master



create table arati_Employee1 (Employee_id int primary key, Employee_FirstName varchar, Employee_LastName varchar, Employee_EmailId varchar, Employee_Age int)
drop table arati_Employee
create table arati_Employee (Employee_id numeric(10) primary key, Employee_FirstName varchar(10), Employee_LastName varchar(10), Employee_EmailId varchar(30), Employee_Age numeric(3))
insert into arati_Employee
values(161717,'Arati','Raipatrewr','ara@gmail.com',21);
insert into arati_Employee
values(161718,'Sayali','Sindhikar','say@gmail.com',22),(161719,'Komal','karale','kk@gmail.com',22)
select * from arati_Employee
drop table arati_Employee





create table Arati_Employee
(
E_Id int,
Firstname varchar(50),
LastName varchar(30)
);

insert into Arati_employee values(161717,'Arati','Raipatrewar'),(161422,'Komal','Karale'),(161718,'Sayali','Sindhikar')

insert into arati_Employee(E_Id,Firstname,LastName) values (162425,'Pooja','raip')

select * from arati_Employee

select * from arati_Emp where LastName='Karale'

select * from arati_Emp where LastName like 'r%'

sp_rename  arati_Emp,Arati_Employeee

drop table Arati_Employee

create type MyId 
from numeric(10) not null ;

alter table Arati_Employee add Gender varchar(10)

insert into arati_Employee(E_Id,Firstname) values (162425,'Pooja')

update Arati_Employee set LastName='raipatrewar' where E_Id=162425

alter table Arati_Employee
add constraint E_Id primary key (E_Id)

alter table Arati_Employee
add address varchar(50) default 'Pune'

insert into Arati_employee values(161718,'Dipti','jadhav')



create table Arati_tblpopulation
(
country varchar(50),
[state] varchar(50),
city varchar(50),
[population (in millions)] int
)

INSERT INTO Arati_tblpopulation VALUES('India', 'Delhi','East Delhi',9 )
INSERT INTO Arati_tblpopulation VALUES('India', 'Delhi','South Delhi',8 )
INSERT INTO Arati_tblpopulation VALUES('India', 'Delhi','North Delhi',5.5)
INSERT INTO Arati_tblpopulation VALUES('India', 'Delhi','West Delhi',7.5)
INSERT INTO Arati_tblpopulation VALUES('India', 'Karnataka','Bangalore',9.5)
INSERT INTO Arati_tblpopulation VALUES('India', 'Karnataka','Belur',2.5)
INSERT INTO Arati_tblpopulation VALUES('India', 'Karnataka','Manipal',1.5)
INSERT INTO Arati_tblpopulation VALUES('India', 'Maharastra','Mumbai',30)
INSERT INTO Arati_tblpopulation VALUES('India', 'Maharastra','Pune',20)
INSERT INTO Arati_tblpopulation VALUES('India', 'Maharastra','Nagpur',11 )
INSERT INTO Arati_tblpopulation VALUES('India', 'Maharastra','Nashik',6.5)

select * from Arati_tblpopulation

select sum([population (in millions)]) as [Total Population] from
Arati_tblpopulation 

select max([population (in millions)]) as [Maximum Population] from
Arati_tblpopulation 

select min([population (in millions)]) as [Minimun Population] from
Arati_tblpopulation 

select avg([population (in millions)]) as [Average Population] from
Arati_tblpopulation 

select count([population (in millions)]) as [Counted Population] from
Arati_tblpopulation 

select state,Sum([population (in millions)]) as [Total Population] from
Arati_tblpopulation
group by state

select state,Sum([population (in millions)]) as [Total Population] from
Arati_tblpopulation
group by state
having Sum([population (in millions)])>30

select * from Arati_tblpopulation order by state

select * from Arati_tblpopulation order by state desc

select state,Sum([population (in millions)]) as [Total Population] from
Arati_tblpopulation
group by state
having Sum([population (in millions)])>15
order by state

select * from Arati_tblpopulation 
where city in('Pune','nashik','Belpur')

select * from Arati_tblpopulation 
where city like 'B____'

select city from Arati_tblpopulation 
where [population (in millions)]=
(select  min([population (in millions)]) from Arati_tblpopulation)



create table Arati_Customer
(
Custid int primary key,
CustFName varchar(50),
CustLName varchar(50),
ORD_Id int
);

create table Arati_Orders(
O_Id int primary key,
O_Name varchar(50)
);

insert into Arati_Customer values(1,'Arati','raipatrewar',121),(2,'Komal','Karale',122)

insert into Arati_Orders values(1,'Samosa'),(3,'Pizza')
 
select * from Arati_Customer,Arati_Orders

select * from Arati_Customer
inner join Arati_Orders
on Arati_Customer.ORD_Id=Arati_Orders.O_Id

select * from Arati_Customer
left outer join Arati_Orders
on Arati_Customer.ORD_Id=Arati_Orders.O_Id

select * from Arati_Customer
right outer join Arati_Orders
on Arati_Customer.ORD_Id=Arati_Orders.O_Id

select * from Arati_Customer
join Arati_Orders
on Arati_Customer.ORD_Id=Arati_Orders.O_Id

select * from Arati_Customer
left join Arati_Orders
on Arati_Customer.ORD_Id=Arati_Orders.O_Id

select * from Arati_Customer
right join Arati_Orders
on Arati_Customer.ORD_Id=Arati_Orders.O_Id






























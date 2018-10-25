create table Ar_Customer 
(
Customerid int unique not null,
CustomerName varchar(20) not null,
Address1 varchar(30),
Address2 varchar(30),
ContactNumber varchar(12) not null,
PostalCode varchar(10)
)

create table Ar_Employee
(
Employeeid int not null primary key,
Name nvarchar(255) null
)

create table Ar_Contractor
(
contractorid int not null primary key,
Name nvarchar(255) null
)

create table Ar_TestRethrow
(
id int primary key
)
--------------------LAB 1-1------------------
create type A_Region from char(15);

--------------------Lab 1-2------------------
create default XYZ as 'North America'

--------------------Lab 1-3------------------
--exec sp_bindefault A_Region

--------------------lab 1-4------------------
alter table Ar_Customer 
add  Customer_Region Region; 

select * from Ar_Customer
--------------------lab 1-4----------------
create table Ar_DataCon
(
id int  primary key,
Name varchar(30),
Lastname varchar(30),
Marks int
)

select * from Ar_DataCon



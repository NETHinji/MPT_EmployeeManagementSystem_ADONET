create function AratiSquareArea(@s1 int)
returns int
begin
	declare @Result int;
	set @Result=@s1*@s1;
	return @Result;
end


select dbo.AratiSquareArea(21);

create table Arati_Student
(
[Studentid] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar](200) NOT NULL,
[LastName] [nvarchar](200) NULL,
[Email] [nvarchar](100) Null
)

insert into Arati_Student values('Arati','Raipatrewar','ars@gmail.com');

select * from Arati_Student;

insert into Arati_Student values('Arati','Raipatrewar','ars@gmail.com'),('Komal','Karale','kkp@gmail.com'),('Sayali','Sindhikar','ssa@gmail.com');

delete from Arati_Student where Studentid=2;

insert into Arati_Student values('Parul','Kumbhalakar','pka@gmail.com');

insert into Arati_Student values('Xyz','Abc','XA@gmail.com');

delete from Arati_Student where Studentid=5;

insert into Arati_Student values('Pooja','Rathi','Pr@gmail.com');

--------------------------------------------------------------------------------

CREATE SEQUENCE Arati_seq
start with 1
increment by 1
minvalue 1
maxvalue 100
cycle;

CREATE TABLE Arati_UseSeq
( 
ID numeric(3),
NAME char(20)
);

insert into Arati_UseSeq values(Arati_Seq.nextval,'Arati')

----------------------------------------------------------------------------------------
alter procedure Arati_GetDetail(@sid numeric, @semail varchar(30))
as
begin
select FirstName+' '+LastName+' '+Email from Arati_Student where Studentid=@sid and Email=@semail
end

exec Arati_GetDetail 1,'ars@gmail.com'


create procedure Arati_GetDetails(@sid numeric, @ar varchar(30) out)
as
begin
select @ar=FirstName+' '+LastName+' '+Email from Arati_Student where Studentid=@sid 
end

declare @Op varchar(100)
exec Arati_GetDetails 1,@op Output
select @op as Name

create table Arati_Try
(
[Studentid] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar](200) NOT NULL,
[LastName] [nvarchar](200) NULL,
[Email] [nvarchar](100) Null
)

insert into Arati_Try values('Arati','Raipatrewar','ars@gmail.com');


alter procedure Arati_Insert(@sid numeric )
as
begin
insert into Arati_Try 
select FirstName,LastName,Email from Arati_Student where Studentid=@sid
delete from Arati_Student where Studentid=@sid
select * from Arati_try
select * from Arati_Student
end

exec Arati_Insert 9


create procedure Arati_Insert1(@sid numeric )
as
begin
declare @FN varchar(20), @LN varchar(20), @EM varchar(20)
select @FN=FirstName,@LN=LastName,@EM=Email from Arati_Student where Studentid=@sid
insert into Arati_Try values(@FN,@LN,@EM) 
delete from Arati_Student where Studentid=@sid
select * from Arati_try
select * from Arati_Student
end

exec Arati_Insert 6

alter table Arati_try add TriggStatus varchar(20)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----TRIGGER----

create trigger Arati_TrgAfterInsert on dbo.[Arati_Student]
for Insert
as

	declare @fn varchar(20),@ln varchar(20),@em varchar(20),@TriggStatus varchar(100)
	select @fn=i.FirstName from inserted i;
	select @ln=i.LastName from inserted i;
	select @em=i.Email from inserted i;
	set @TriggStatus='Inserted after trigger';

	insert into Arati_Try values (@fn,@ln,@em,@TriggStatus);

go

insert into Arati_Student values('LMN','PQR','XA@gmail.com')


select * from Arati_Try


---------------------------------------------------------------------------------------------------------------------------------------	

create table Arati_Cust2
(
[CustId] [int] ,
[Cust_Name] [varchar](20),
[Cust_LastName] [varchar](20),
[Cust_Age] [int]
)

insert into Arati_Cust2 values (3,'XYZ','LMN',22),(2,'ABC','WXY',23),(1,'PQR','STU',24)

select * from Arati_Cust2

create clustered index Ar_CLIndx
on Arati_Cust2 (Cust_Name Asc)


CREATE NONCLUSTERED INDEX IX_tblStudent_Name
ON Arati_Cust2(Cust_name desc)

------------------------------------------------------------------------------------------------------------------------------------------
drop table Arati_Employee
create table Arati_Employee(
Employee_Id int primary key,
Name nvarchar(50),
managerId int
)

insert into Arati_Employee
select 1,'Mike',3
union all
select 2,'david',3
union all
select 3,'Roger',null
union all
select 4,'Marry',2
union all
select 5,'joseph',2
union all
select 6,'Ben',2
go

select e1.Name as EmpName, e1.Name as Mangname
from Arati_Employee e1 inner join Arati_Employee e2
on e2.managerId=e1.Employee_Id

select *from Arati_Customer

select * from 
Arati_Customer c full outer join Arati_Orders o
on c.ORD_Id=o.O_Id

-----------------------------------------------------------
------ERROR--------IF--ELSE----

create table Arati_2
(
[CustId] [int] primary key,
[Cust_Name] [varchar](20)
)

declare @cid int
declare @cnm varchar(20)
declare @errcode int

set @cid=2
set @cnm='abc'

insert into Arati_2 values(@cid,@cnm)

set @errcode=@@ERROR
if @errcode>0
  begin
		print 'Error occured'
		print @errcode
end
else
		print 'Added successfully'

-------------------------------------------------------------
-----TRY-CATCH------

declare @cid1 int
declare @cnm1 varchar(20)
declare @errcode1 int

set @cid1=3
set @cnm1='abcd'

begin try
		insert into Arati_2 values(@cid1,@cnm1)
		print' Added'
end try

begin catch
		print 'error occured'
		print ERROR_NUMBER()
end catch

--------------THROW ERROR-----------------

BEGIN TRY
  DECLARE @result INT
  SET @result = 55/0
END TRY
BEGIN CATCH
    THROW
END CATCH


-------------RAISE ERROR----------------

BEGIN TRY
	DECLARE @result1 INT
	 SET @result1 = 55/0
END TRY

BEGIN CATCH
	 DECLARE
	 @ErMessage NVARCHAR(2048),
	 @ErSeverity INT,
	 @ErState INT
 
	 SELECT
	 @ErMessage = ERROR_MESSAGE(),
	 @ErSeverity = ERROR_SEVERITY(),
	 @ErState = ERROR_STATE()
 
	RAISERROR (@ErMessage, @ErSeverity,@ErState )
END CATCH

	










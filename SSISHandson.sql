create database SSISHandson
go

use SSISHandson
go

Create table UKBuiltUpAreas (
[Rank] int,
[Built-up area] decimal,
[Population] integer
)

Alter table UKBuiltUpAreas alter column [Built-up area] varchar(500)

insert into UKBuiltUpAreas values(1,'Greater London Area',9787426)

select * from UKBuiltUpAreas

sp_help UKBuiltUpAreas

Create table GrandPixEvents (
[GrandPixID] int,
[Round] int,
[VenueName] varchar(250),
Season int
)


insert into GrandPixEvents values (28,8,'European Grand Prix',2016)
insert into GrandPixEvents values (29,9,'Australian Grand Prix',2016)
insert into GrandPixEvents values (30,10,'French Grand Prix',2016)
insert into GrandPixEvents values (31,11,'US Grand Prix',2016)


CREATE TABLE BigBangEpisodes(
	SeasonNumber int NULL,
	EpisodeNumber int NULL,
	DateBroadcast date NULL,
	Title varchar(255) NULL
)

GO

-- show table
SELECT * FROM BigBangEpisodes

delete from BigBangEpisodes
CREATE TABLE [dbo].[TvPrograms](
	[ProgramId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ProgramName] [varchar](255) NULL,
	[OwlRating] [tinyint] NULL
)

GO

SELECT * FROM TvPrograms

CREATE TABLE WeirdStats(
	StoreName nvarchar(255) NULL,
	Statistic nvarchar(10) NULL,
	NumberPurchases int NULL,
	Amount float NULL
)

GO

Alter table WeirdStats alter column Amount float NULL

SELECT * FROM WeirdStats

truncate table WeirdStats

sp_help WeirdStats


CREATE TABLE FilmsForLookupExercise(
	FilmName nvarchar(255),
	Director nvarchar(255),
	GenreId int
)


CREATE TABLE Genre(
	GenreId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GenreName nvarchar(255) NOT NULL
)

GO
SET IDENTITY_INSERT Genre ON 

GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (1, N'Action')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (2, N'Adventure')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (3, N'Animation')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (4, N'Awful')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (5, N'Biography')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (6, N'Comedy')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (7, N'Crime')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (8, N'Disaster')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (9, N'Drama')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (10, N'Family')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (11, N'Fantasy')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (12, N'History')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (13, N'Horror')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (14, N'Martial Arts')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (15, N'Musical')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (16, N'Mystery')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (17, N'Romance')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (18, N'Science Fiction')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (19, N'Sport')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (20, N'Thriller')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (21, N'War')
GO
INSERT dbo.Genre (GenreId, GenreName) VALUES (22, N'Western')
GO
SET IDENTITY_INSERT dbo.Genre OFF
GO

truncate table FilmsForLookupExercise
truncate table Genre

SELECT * FROM FilmsForLookupExercise
SELECT * FROM Genre

CREATE TABLE AdoShopping(
	ShopName nvarchar(255),
	ShopDate date,
	Spending decimal(10,2)
)
GO

SELECT * FROM AdoShopping

USE SSISHandson
go
create table Student
( Roll_No int , 
Name varchar(50), 
Gender varchar(30), 
Mob_No bigint,
mailid nvarchar(max));

alter table Student 
alter column mailid varchar(255)

insert into Student
values (4, 'ankita', 'female', 9876543210,'abc' );
insert into Student 
values (3, 'anita', 'female', 9675432890 , 'abc');
insert into Student 
values (5, 'mahima', 'female', 8976453201,'abc' ); 
insert into Student 
values (6, 'Sam', 'female', 8976453202,'abc' ); 
insert into Student 
values (7, 'Anveshi', 'female', 8976453203,'abc' ); 
insert into Student 
values (8, 'Shivi', 'female', 8976453203 ,'abc'); 
insert into Student 
values (8, 'Shivi', 'female', 8976453203 ,'nitin@stpi.in'); 

select * from student

Select * from Genre

insert into Genre(GenreName) Values('Acton')
insert into Genre(GenreName) Values('Act')
insert into Genre(GenreName) Values('Action gn')

select GenrePrime,GenreID,GenreName into GenreDQS from GenreIncremental where 1=2

Select * from GenreDQS
Select * from GenreDQSData
select * from Genre g full outer join   GenreIncremental gi on g.GenreId=gi.genreid

update Genre set GenreName='testingViewer' where GenreId=30
update Genre set GenreName='testingscd' where GenreId=27

select * from GenreIncremental order by 2
select * from GenreStaging

SET IDENTITY_INSERT DBO.Genre ON 
insert into Genre (GenreId,GenreName) values (30,'TestingInferred1')
insert into GenreIncremental (GenreID,GenreName) values (31,NULL)
insert into GenreIncremental (GenreID,GenreName,startdate) values (2,'Testing',getdate())
insert into GenreIncremental (GenreID,GenreName,startdate) values (3,'Testing1',getdate())

insert into Genre (GenreName) values ('Testing3')

select * into GenreIncremental from genre where 1=2

select * into GenreStaging from genre where 1=2

drop table GenreStaging

Create table GenreStaging (
GenreID int,
GenreName varchar(max)
)

Alter table GenreIncremental alter column GenreID int

merge GenreIncremental as target using  GenreStaging as source on target.genreid=source.genreid
when matched and target.genrename<>source.genrename then update set target.genrename=source.genreName;


Create table Transactiontesting (id int)

insert into Transactiontesting values (1)
insert into Transactiontesting values ('A')

Select * from Transactiontesting
group by id

Truncate table Transactiontesting

Use ssishandson
go

Create Table PrevNull (
SeqID int not null,
ID int null,
Name Char(10)
)

insert into PrevNull values (1,10,'ABC')
insert into PrevNull values (2,NUll,'ABC')
insert into PrevNull values (3,20,'ABC')
insert into PrevNull values (4,NUll,'ABC')
insert into PrevNull values (5,NUll,'ABC')
insert into PrevNull values (6,30,'ABC')
insert into PrevNull values (7,NUll,'ABC')

with cte as (
Select *,SUm(case when id is not null then 1 else 0 end) over (order by seqid asc) as sm from PrevNull
)select  cte.* ,FIRST_VALUE(id) over (partition by sm order by seqid asc) idval, sm from cte 

;with cte as (
Select *,SUm(case when id is not null then 1 else 0 end) over (order by seqid asc) as sm from PrevNull
),
cte2 as (
select  cte.* ,FIRST_VALUE(id) over (partition by sm order by seqid asc) idval from cte )
--select * from cte2
update s
set s.ID=c.idval
from PrevNull s join cte2 c on s.SeqID = c.SeqID and s.ID is null
--select  cte.* ,FIRST_VALUE(id) over (partition by sm order by seqid asc) idval, sm from cte 

select * from PrevNull


Select * into windowunbounded from PrevNull

Select * from windowunbounded

Alter table 
windowunbounded
add custid int
update windowunbounded set ID=80 where Seqid=7

update windowunbounded set custid=3 where Seqid in (6,7)

Select *,FIRST_VALUE(ID) over(Partition by custid order by SeqID) from windowunbounded
Select *,LAST_VALUE(ID) over(Partition by custid order by SeqID) from windowunbounded -- here default frame is ROWS BETWEEN UNBOUNDED PRECEDDING AND CURRENT ROW hence result is wrong


USE SSISHandson
go

Select *,LAST_VALUE(ID) over(Partition by custid order by SeqID),
LAST_VALUE(ID) over(Partition by custid order by SeqID ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING)
--,LAG(ID) OVER (Partition by custid order by SeqID Rows between 2 PRECEDDING and UNBOUNDED FOLLOWING)
,LEAD(ID) OVER (Partition by custid order by SeqID)
from windowunbounded
order by SeqID




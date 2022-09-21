use Mostaql
CREATE TABLE Works (ID int primary key,
                    title_work nvarchar(30) not null,
					image_work nvarchar(100),
					description_work text,
					link nvarchar(40),
					data_work date not null,
					skills text,
					data_published date)

CREATE TABLE Users(id int primary key identity(1,1) , 
                   first_name nvarchar(40) not null,
				   last_name nvarchar(40) not null,
				   country nvarchar(40),
				   languages nvarchar(40),
				   brith_day date, 
				   phone nvarchar(40),
				   password_user nvarchar(40),
				   image_user nvarchar(40))

CREATE TABLE Freelancer(id int primary key,
                        info text not null,
						specification nvarchar(40),
						job_title nvarchar(50),
						video_link text ,
						owner_lancer nvarchar(20),
						freelancer nvarchar(20),
						aviable nvarchar(20),
						price_hour decimal,
						aviable_amount decimal,
						)

CREATE TABLE Files(id int primary key,
                   file_ nvarchar(100),
				   type_file nvarchar(50))

CREATE TABLE Projects(id int primary key,
                      name_project nvarchar(50),
					  skills text,
					  descriptions text,
					  budget decimal,
					  time_delivery int,
					  data_published date,
					  state_project int,
					  id_Freelancer int foreign key references Freelancer(id))

CREATE TABLE Review(id int primary key,
                    id_user int foreign key references Users(id),
					id_free int foreign key references Freelancer(id),
					rate_professional int,
					rate_communction int,
					rate_deilvery int,
					rate_quality int,
					rate_agein_work int,
					comment text,
					date_published date)

CREATE TABLE offers(id int primary key IDENTITY(1,1) ,
                    delivery_time int,
					amount int,
					id_user int foreign key references Users(id),
					descriptions text,
					date_published date,
					id_project int foreign key references projects )

CREATE TABLE Favorite(id int primary key,
                      id_user int foreign key references Users(id),
					  id_project int foreign key references Projects(id))

CREATE TABLE company(id int primary key,
                     name_company nvarchar(30) not null,
					 specification nvarchar(40),
					 num_employee int,	
					  website nvarchar(100),
					 manger int foreign key references Users(id))

create table empolyee_company(
                              id int primary key identity(1,1),
							  id_user int foreign key references Users(id),
							  id_company int foreign key references company(id)
							   )

alter table Works add id_user int foreign key references Users(id)
alter table Freelancer add id_user int foreign key references Users(id)
alter table Users add email nvarchar(100) ;
alter table Freelancer drop column specification
alter table Works alter column link nvarchar(180)
alter table Projects add id_user int foreign key references Users(id)
alter table Files alter column file_ nvarchar(200) not null
alter table Files add id_porject int foreign key references Projects(id)
alter table offers alter column delivery_time nvarchar(50)

insert into Users values(10100 , 'Hani' , 'Saeed' , 'Saudi Arabia' , 'English', '10/22/1988' ,'0592696578','asa2aa4','1a.png', 'saeed@gmail.com')
insert into Users values(10101 , 'Ahmed'  , 'Hossam' , 'Egypt', 'English',  '10/22/1988' ,'0592696578','asaa3a4','2a.png','Adil@gmail.com')
insert into Users values(10102 , 'Mohmmad' , 'Ahmed' , 'Germany', 'Arabic','10/22/1988' ,'0592696578','asa3aa4','3a.png', 'Walaa@gmail.com')
insert into Users values(10103 , 'Sofiaa' , 'Zaygh' , 'Palestine','Arabic', '10/22/1988' ,'0592696578','asa3aa4','5a.png', 'Nancy@gmail.com')
insert into Users values(10104 , 'Alaa'  , 'Ehssan' , 'USA', 'Arabic','10/22/1988' ,'0592696578','asaaa4','6a.png', 'saeed@gmail.com')
insert into Users values(10105 , 'Ali'  , 'Abed' , 'France', 'Arabic','10/22/1988' ,'0592696578','asaa3a4','7a.png' , 'saeed@gmail.com')
insert into Users values(10106 , 'Abeer' , 'Kreem' , 'China','Arabic', '10/22/1988' ,'0592696578','asa3aa4','8a.png' , 'Mohammed@gmail.com')
insert into Users values(10107 , 'waseem'   , 'Hani' , 'Palestine','Arabic', '10/22/1988' ,'0592696578','asaeaa4','9a.png' , 'saeed@gmail.com')

insert into company values(1001 , 'Shift' , 'programming' ,  400300 , 'httpss://students.up.edu.ps/' , 10100)
insert into Company values(1002 , 'Tecnhical' , 'programming' ,  200211 , 'httpss://students.up.edu.ps/' , 10101)
insert into Company values(1003 , 'IT_Man' , 'programming' ,  311322 , 'httpss://students.up.edu.ps/' , 10102)
insert into Company values(1004 , 'Nano' , 'writing and drafting' ,  999555 , 'httpss://students.up.edu.ps/' ,10100)
insert into Company values(1005 , 'Technology Pioneers' , 'programming' , 466433 , 'httpss://students.up.edu.ps/' , 10103)
insert into Company values(1006 , 'Break' , 'Analsis' ,   111000 , 'httpss://students.up.edu.ps/' , 10100)
insert into Company values(1007 , 'Armaco' , 'data mining' ,  711611 , 'httpss://students.up.edu.ps/y' ,10100)
insert into Company values(1008 , 'Benz' , 'Design' , 911711 , 'httpss://students.up.edu.ps/' ,10105)

insert into Freelancer values(1 , 'text description about freelancer', 'Programmer' , '@linke.com', 'FALSE' , 'TRUE' , 'FALSE' , 25 ,982 , 10101)
insert into Freelancer values(2 , 'text description about freelancer', 'Content writer' , '@linke.com',  'FALSE' , 'TRUE' , 'FALSE' , 30 ,982 , 10102)
insert into Freelancer values(3 , 'text description about freelancer', 'Desiner' , '@linke.com', 'TRUE' , 'TRUE' , 'TRUE' , 50 ,982 , 10103)
insert into Freelancer values(4 , 'text description about freelancer', 'Programmer' , '@linke.com', 'FALSE' , 'TRUE' , 'FALSE' , 35 , 982 , 10104)
insert into Freelancer values(5 , 'text description about freelancer', 'Data analyst' , '@linke.com', 'FALSE' , 'TRUE' , 'FALSE' , 20 , 982 , 10105)
insert into Freelancer values(6 , 'text description about freelancer', 'Web developer' , '@linke.com', 'TRUE' , 'TRUE' , 'TRUE' , 65 ,982 , 10106)

insert into Works values(1000001 , 'Marketer' , '1a.png' , 'text' , 'httpss://www.youtuber.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-10-1988' , 10101)
insert into Works values(1000002 , 'Analsis' , '8a.png' , 'text' , 'httsps://www.youtube.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-22-2002' ,10104 )
insert into Works values(1000003 , 'Electrician' , '8a.png' , 'text' , 'httsps://www.youtube.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-22-2002' ,10103 )
insert into Works values(1000004 , 'programming' , '8a.png' , 'text' , 'httsps://www.youtube.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-22-2002' ,10105 )
insert into Works values(1000005 , 'Electrician' , '8a.png' , 'text' , 'httsps://www.youtube.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-22-2002' ,10102 )
insert into Works values(1000008 , 'Designer' , '9a.png' , 'text' , 'httsps://www.youtube.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-22-2002' ,10104 )
insert into Works values(1000009 , 'Marketer' , '1a.png' , 'text' , 'httpss://www.youtuber.com/watch?v=dPS4jGicSuc' , '10-22-2002' , 'text' , '10-10-1988' , 10101)

insert into Review values(1100 , 10100 , 1, 1 , 1 , 2 , 5 , 1 , 'text' , '10-22-2002')
insert into Review values(1200 , 10101 , 2, 2 , 3 , 2 , 4 , 2 , 'text' , '10-22-2002')
insert into Review values(1300 , 10102 , 3, 3 , 5 , 5 , 3 , 1 , 'text' , '10-22-2002')
insert into Review values(1400 , 10103 , 2, 4 , 4 , 1 , 1 , 5 , 'text' , '10-22-2002')
insert into Review values(1500 , 10104 , 3, 5 , 5 , 3 , 1 , 4 , 'text' , '10-22-2002')
insert into Review values(1600 , 10105 , 4, 6 , 1 , 4 , 1 , 6 , 'text' , '10-22-2002')
insert into Review values(1700 , 10106 , 4, 7 , 2 , 3 , 2 , 4 , 'text' , '10-22-2002')
insert into Review values(1800 , 10107 , 4, 8 , 2 , 3 , 5 , 2 , 'text' , '10-22-2002')

insert into Projects values(101 , 'Design' , 'adobe xd' , 'description about project ', 100 , 7 ,'5-22-2022' , 1,4, 10100)
insert into Projects values(102 , 'Data analysis' , 'analysis' , 'description about project ', 250 , 5   ,'5-22-2022' , 0, 2,10101)
insert into Projects values(103 , 'Crafting a Book' , 'Microsoft Office' , 'description about project ', 25 ,7  ,'5-22-2022', 1 ,6, 10100 )
insert into Projects values(104 , 'Design' , 'figma' , 'description about project ',  75 , 30  ,'5-8-2022' , 1, 4,10102 )
insert into Projects values(105 , 'Web developer' , 'html-css-js' , 'description about project ',  1100  ,60 ,'5-02-2022', 0 , 4,10103 )
insert into Projects values(106 , 'Crafting a Book' , 'Microsoft Office' , 'description about project ',  50 ,3 ,'5-23-2022', 1 ,3, 10102 )
insert into Projects values(107 , 'Requirements' , 'UML' , 'description about project ',  500  ,6 ,'7-12-2022' , 0, 2,10107)
insert into Projects values(108 , 'Design' , 'adobe xd' , 'description about project ',  50  ,7,'6-22-2022' , 0, 1,10101 )

insert into Files values(90001 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'text' ,101)
insert into Files values(90002 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'pdf' ,101)
insert into Files values(90003 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'png' ,102)
insert into Files values(90004 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'Gpg' ,103)
insert into Files values(90005 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'mp4' ,104)
insert into Files values(90006 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'pdf' ,105)
insert into Files values(90007 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'pptx' ,104)
insert into Files values(90008 , 'C:\Users\hp\Downloads\University\Season 3.2' , 'png' ,106)

insert into Favorite values(301 , 10100 , 101)
insert into Favorite values(302 , 10101 , 102)
insert into Favorite values(303 , 10102 , 103)
insert into Favorite values(304 , 10103 , 104)
insert into Favorite values(305 , 10104 , 105)
insert into Favorite values(306 , 10105 , 106)
insert into Favorite values(307 , 10106 , 107)
insert into Favorite values(308 , 10107 , 108)

insert into Offers values('1-7 dayes' , 100 , 10100 , 'text' , '10/22/2022' , 101)
insert into Offers values('1 month' , 300 , 10101 , 'text' , '11/02/2022' , 102)
insert into Offers values('1-3 dayes' , 500 , 10102 , 'text' , '10/24/2022' , 103)
insert into Offers values('1-10 dayes' , 1000 , 10103 , 'text' , '10/12/2022' , 104)
insert into Offers values('1-6 month' , 330 , 10104 , 'text' , '11/22/2022' , 101)
insert into Offers values('1-3 dayes' , 280 , 10105 , 'text' , '12/22/2022' , 102)
insert into Offers values('15-20 day' , 970 , 10106 , 'text' , '9/22/2022' , 105)
insert into Offers values('1-15 day' , 400 , 10107 , 'text' , '5/22/2022' , 101)
insert into Offers values('1-15 day' , 400 , 10107 , 'text' , '5/22/2022' , 101)
insert into Offers values('1-15 day' , 400 , 10107 , 'text' , '5/22/2022' , 104)
insert into Offers values('1-15 day' , 400 , 10107 , 'text' , '5/22/2022' , 102)
insert into Offers values('1-15 day' , 400 , 10107 , 'text' , '5/22/2022' , 103)
insert into Offers values('1-15 day' , 400 , 10107 , 'text' , '5/22/2022' , 103)

insert into empolyee_company values(10101 , 1001)
insert into empolyee_company values( 10102 , 1003)
insert into empolyee_company values( 10103 , 1002)
insert into empolyee_company values( 10104 , 1001)
insert into empolyee_company values( 10105 , 1001)
insert into empolyee_company values( 10106 , 1003)
insert into empolyee_company values( 10102 , 1002)
insert into empolyee_company values( 10101 , 1001)

-- view to show freelancer that money larage than number
go
Create View view1 AS
Select aviable
From Freelancer 
Where aviable_amount > 10104;

go
Alter View view1 AS
Select *
From Freelancer 
Where aviable_amount <= 50;

SELECT * FROM [view1];

-- join to show freelancer and aviable amount
select Users.first_name ,Users. last_name ,Freelancer.aviable_amount
FROM Users , Freelancer
where  Users.id = Freelancer.id_user 

-- view to show user that speak languages
go
Create View Print_users_arabic AS 
Select first_name + last_name as 'Full_Name' , country 
From users 
Where languages ='Arabic'

SELECT * FROM [Print_users_arabic]

CREATE PROCEDURE AllUsers2
AS
SELECT * FROM users
GO;
EXEC AllUsers2;

-- Trigger to show row that delete
create trigger insert_works
on Works after insert
as 
begin
select ID , title_work from inserted
end;

alter table Users add credit int 
-- trigger to cheack credit before update 
go
create trigger LowGredit 
on Users FOR update 
AS
declare @creditating int 
select @creditating = Users.credit
From Users where Users.id = 10101
IF @creditating = 5
BEGIN
print('creadit this WEEK ')
ROLLBACK TRANSACTION
END
-- -----------------------------------------------------------------------------------------------------------
-- Backup to Database
backup database Mostaql 
To Disk = 'D:\BackupDatabase\Mostaql.bak'
-- Restore to Backup 
restore database Mostaql
From Disk = 'D:\BackupDatabase\Mostaql.bak';
-- -----------------------------------------------------------------------------------------------------------

create view viewuser 
AS
SELECT first_name , specification
FROM company , Usres
GO
ALTER view viewuserAS
SELECT first_name , specification
FROM company c , Usres u
where u.ID = c.manger
GO
-- -----------------------------------------------------------------------------------------------------------

CREATE VIEW view11
AS
SELECT delivery_time , amount
FROM offers
GO
-- -----------------------------------------------------------------------------------------------------------
go
CREATE PROCEDURE AllReview 
AS
SELECT * FROM Review
GO;
EXEC AllReview;
-- -----------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE UserName @first_name nvarchar(20)
AS
SELECT * FROM users WHERE first_name = @first_name
GO
EXEC UserName @first_name = 'Ali';

-- -----------------------------------------------------------------------------------------------------------

-- Procedure to show offers to each project with names Freelancer
create procedure Show_offers 
@id_project int 
AS
SELECT CONCAT( first_name , ' ' ,last_name) AS 'Full_name' , P.name_project, O.amount , O.delivery_time
FROM users U , offers O, projects P
WHERE U.id = O.id_user AND P.id = O.id_project AND P.id = @id_project
GO

Exec show_offers @id_project = 101
-- -----------------------------------------------------------------------------------------------------------
-- Trigger to Update freelancer status when linked in a project
create Trigger update_state_freelancer 
on Projects AFTER update
As
BEGIN
declare @id_freelancer int
select  @id_freelancer = id_Freelancer from inserted
update Freelancer SET aviable = 'TRUE'
where id =  @id_freelancer
END
Go

update Projects set id_Freelancer = 1
where id = 101

-- -----------------------------------------------------------------------------------------------------------
-- view to show Freelancer with averge ratting 
create view calucate_ratting
AS
select R.id_free , AVG(rate_professional) as 'rate_professional' ,
       AVG(rate_communction) as 'rate_communcation' ,
	   AVG(rate_deilvery) as 'rate_delivery',
	   AVG(rate_quality) as 'rate_quality',
	   AVG(rate_agein_work) as 'rate_agein_work'
From   Review R 
Group By R.id_free
GO

create view Freelancer_ratting
AS
SELECT CONCAT (first_name ,' ' , last_name) as 'Full Name',
              C.rate_professional, C.rate_delivery ,C.rate_communcation ,
			  C.rate_quality ,C.rate_agein_work
FROM calucate_ratting C, users U , Freelancer F
WHERE C.id_free = F.id AND U.id = F.id_user
Go
select * from Freelancer_ratting
-- -----------------------------------------------------------------------------------------------------------
-- view to show names freelancer that work in companies
create view Empolyeeies_Company
AS
select first_name , last_name , name_company
From users U , company C , empolyee_company EC
where U.id = EC.id_user AND C.id = EC.id_company
Go
select * from Empolyeeies_Company

--------------------------------------------------------------------------------------------------------------
-- add user by procdure
CREATE PROCEDURE Add_user
  @id int, @first_name nvarchar(50),@last_name nvarchar(50),@email nvarchar(100)
AS
IF ((@id = 0) OR (@last_name = '') OR (@first_name = '') OR (@email = ''))
  RETURN -1

INSERT INTO users(id,first_name , last_name ,email)
VALUES(@id, @first_name,@last_name,@email)
RETURN 0

exec Add_user @id = 10112 , @first_name = 'Aya' , @last_name='Abd Al-qader' ,@email ='abd@gmail.com'

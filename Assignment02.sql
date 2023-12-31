create database ExerciseDb

use ExerciseDb

create table Publisher
(PID int primary key,
Publisher nvarchar(50) not null unique)

create table Category
(CID int primary key,
Category nvarchar(50) not null unique)

create table Author
(AID int primary key,
AuthorName nvarchar(50) not null unique) 

create table Book
(BID int primary key,
BName nvarchar(100) not null,
BPrice float,
AID int foreign key references Author,
PID int foreign key references Publisher,
CID int foreign key references Category)


insert into Publisher (PID, Publisher)
values(11, 'Marvel Publisher'),
(12, 'DC Publisher'),
(13, 'Abc Publisher')


insert into Author(AID,AuthorName) values (100,'Emily'),
(101,'John'),
(102,'Will')

insert into Category(CID,Category) values (1,'Thriller'),
(2,'Comedy'),(3,'Horror')

insert into Book (BID,BName,BPrice,AID,PID,CID) 
values(22,'Book1',500, 100,11,1),
(23,'Book2',1000, 101,12,2),
(24,'Book3',1500,102,13,3),
(25,'Book4',2000,101,12,1),
(26,'Book5',2500,100,13,2),
(27,'Book6',3000,102,11,3)

select BID,BName,BPrice,AuthorName Author,Publisher,
Category from Book b join Author a on b.AID = a.AID
join Publisher p on b.PID = p.PID
join Category c on b.CID = c.CID




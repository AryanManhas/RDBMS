use lab;

create table book 
( BookId int not null , 
AuthorId int not null , 
BookName varchar(30) not null , 
Author varchar(30) not null, 
primary key(BookId));

insert into book
( BookId , AuthorId , BookName , Author)
values
('101' , '201' , 'Book1' , 'Aryan'),
('102' , '202' , 'Book2' , 'Shiv'),
('103' , '203' , 'Book3' , 'Aarab'),
('104' , '204' , 'Book4' , 'Adeesh');

select * from book;

create table Author
( Name varchar(30) not null , 
AuthorId int not null , 
BookId varchar(30) not null , 
primary key(AuthorId));

insert into Author
( Name , AuthorId , BookId )
values
('Aryan', '201' , 'Book1'),
('Shiv', '202' , 'Book2'),
('Aarab' , '203' , 'Book3'),
('Adeesh' , '204' , 'Book4');

select * from Author;

drop table Author;

create table Members
( Name varchar(30) not null , 
MemberId int not null , 
BookIssued varchar(30) not null ,
BookId int not null ,
AuthorId varchar(30) not null, 
primary key(MemberId));

insert into Members (Name , MemberId , BookIssued , BookId , AuthorId)
values
('Aryan','301','Book1','101','201'),
('Shiv','302','Book2','102','202'),
('Aarab','303','Book3','103','203'),
('Adeesh','304','Book4','104','204');


select * from Members;

drop table Members;

create table Staff 
( Name varchar(30) not null , 
StaffId int not null , 
Roles varchar(30) not null , 
primary key(StaffId));

insert into Staff (Name , StaffId , Roles)
values
('Arnav','401','Book1'),
('Arush','402','Book2'),
('Sumit','403','Book3'),
('Vikas','404','Book4');

select * from Staff;

create table Publisher
(Name varchar(30) not null,
PublisherId int not null, 
BookId int not null , 
AuthorId int not null , 
primary key(PublisherId));

select * from Publisher;

insert into Publisher ( Name , PublisherId , BookId , AuthorId)
values
('Sagar','501','101'),
('Chamkila','502','102'),
('Billu','503','103');

select * from Publisher; 

create table MemberDetails 
(
MemberId int not null,
BookIssued varchar(30) not null,
BookId int not null,
AuthorId int not null,
Address varchar(30) not null,
Contact int not null,
Email varchar(30),
CardDetails varchar(30),
primary key (MemberId , BookId , AuthorId));

select * from MemberDetails;
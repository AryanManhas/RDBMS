CREATE USER 'User' IDENTIFIED BY 'MIET122';
GRANT ALL PRIVILEGES ON data.course1 TO 'User';
Show Grants for 'User';
REVOKE ALL PRIVILEGES ON data.course1 FROM 'User';
Show Grants for 'User';
DROP USER 'User' ;

create database lab;
use lab;

drop table student;

create table student(
S_Name varchar(30) , RollNo int , S_Age int , S_Contact double , S_Dept varchar(30));

alter table student
Modify S_Contact double;

insert into student
( S_Name , RollNo , S_Age , S_Contact , S_Dept)
values
( 'ABC' , '330' , '19' , '1234567891' , 'CSE'),
( 'DEF' , '550' , '19' , '1234567892' , 'CSE'),
( 'GHI' , '143' , '19' , '1234567893' , 'Arts'),
( 'JKL' , '546' , '20' , '1254567895' , 'BBA-LLB'),
( 'MNO' , '01' , '19' , '1234567896' , 'Civil'),
( 'PQR' , '34' , '19' , '1234567898' , 'Civil'),
( 'STU' , '78' , '19' , '1234567899' , 'Maths'),
( 'VWX' , '100' , '19' , '1234567890' , 'Science'),
( 'YZA' , '301' , '19' , '1234567870' , 'Civil'),
( 'BCD' , '331' , '19' , '12345678780' , 'Maths');

select * from student;

select S_Name from student;

select * from student where S_Name = 'ABC';

select RollNo from student where S_name = 'BCD';

select upper(S_Name) from student;

select lower(S_Name) from student;

select concat(RollNo,S_Age) from student;

select length(S_Contact) from student;

select ltrim(S_Name) from student;

select rtrim(S_Dept) from student;

select reverse(S_Name) from student;

select soundex('ABC') from student;

select utc_date();

select mod(1234,3);




			











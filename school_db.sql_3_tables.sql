-- create and select the database
drop database if exists School_db;
create database School_db;
use School_db;

-- create table student
create table Student  ( 
	ID	          	int             primary key auto_increment,
	First_name      varchar(25) 	not null,
    Last_name		varchar(25)     not null, 
    Address         varchar(50)		not null,
    City			varchar(50)		not null,
    State			varchar(50)		not null,
    Zip				varchar(5)		not null,
   DateOfBirth		date			not null,
   Email			varchar(50)		not null,
    ssn				varchar(11)		not null
    );
 
 insert into student (First_name , Last_name , Address , City , State , Zip , DateOfBirth , Email , SSN)
  value ( 'karlee' , ' Abrams' , '123_Main_ST' , 'Cincinnati' , 'OH' , '45205' , '2002-09-30', 'one@email,com', '200-00-4321');
   insert into student (First_name , Last_name , Address , City , State , Zip , DateOfBirth , Email , SSN)
  value ( 'Brytt' , 'Lucas' , '415 Chaise' , 'Landen' , 'OH' , '45039' , '1968-11-14', 'two@email,com', '201-00-4321');
   insert into student (First_name , Last_name , Address , City , State , Zip , DateOfBirth , Email , SSN)
  value ( 'Tom' , 'Adams' , '123_Help_ST' , 'Cincinnati' , 'OH' , '45205' , '2004-06-20', 'three@email,com', '202-00-4321');
   insert into student (First_name , Last_name , Address , City , State , Zip , DateOfBirth , Email , SSN)
  value ( 'Steve' , 'Long' , '282 Center_Ln' , 'Newport' , 'Ky' , '41071' , '2001-09-11', 'four@email,com', '203-00-4321');
  
    -- create table course
create table Course  (
	ID 			int 			primary key auto_increment,
	Subject  	varchar(50)            not null,
	Name 		varchar(100) 	       not null
       );
       insert into Course(subject , Name)
 Value ( 'Math' , 'Algebra');
 insert into Course(subject , Name)
 Value ( 'Science' , 'Biology');
 insert into Course(subject , Name)
 Value ( 'Language' , 'Spanish');
 insert into Course(subject , Name)
 Value ( 'Music' , 'Band');
 
 
   
-- create table3 enrollment
create table Enrollment  (
    ID              int         primary key auto_increment,
    StudentID       int         not null,
    CourseID	    int			not null,
    Grade			Varchar(1)  not null,
    foreign key (StudentId) references Student(ID),
    foreign key (CourseId) references course(ID)
    );
    Insert into Enrollment ( StudentID , CourseID , grade)
    value ( '1' , '4', 'B');
     Insert into Enrollment ( StudentID , CourseID, grade)
    value ( '2' , '2' , 'c');
     Insert into Enrollment ( StudentID , CourseID ,grade)
    value ( '3' , '1' , 'A');
     Insert into Enrollment ( StudentID , CourseID, grade)
    value ( '4' , '2','B');
    
    
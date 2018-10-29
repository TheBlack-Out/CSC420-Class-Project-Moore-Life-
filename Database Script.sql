create database CSC420Project;
use CSC420Project;
show tables;

create table Moore_Life_Members (firstname varchar(45), lastname varchar(45), email varchar(45), age int(3), username varchar(45) primary key, userpassword varchar (45));
create table Userkey (userkey int (7) primary key);

drop table Moore_Life_Members;

insert into Moore_Life_Members values ('Felix', 'Crowley', 'fcrowley@email.com', '18', 'Fela01', 'MNoTy76');
 
 
create table LevelID ( levelkey int(4) primary key);


insert into LevelID values ('2');


create table Users_Level (levelkey int(4), userkey int(7), primary key (levelkey, userkey));


insert into Users_Level values (
 


select * from Moore_Life_Members;  
select username from Moore_Life_Members where username ='Fela01' and userpassword ='MNoTy76';
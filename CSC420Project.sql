create database CSC420Project;
use CSC420Project;
show tables;

create table Moore_Life_Members (firstname varchar(45), lastname varchar(45), email varchar(45), age int(3), username varchar(45) primary key, userpassword varchar (45));
create table Userkey (username varchar(45), userkey int (7), foreign key (username) references Moore_Life_Members(username));
create table LevelKey (username varchar(45), levelkey int(4), foreign key (username) references Moore_Life_Members(username));
create table pictures (image_id int(10) not null auto_increment,image blob, primary key (`image_id`));

drop table Moore_Life_Members;
drop table Userkey;
drop table levelkey;

insert into Moore_Life_Members values ('Felix', 'Crowley', 'fcrowley@email.com', '18', 'Fella01', 'MNoTy76');
insert into LevelKey values ('Fella01', '1');
insert into userkey values('Fella01', '4421');
insert into pictures values(3, LOAD_FILE('d:\\apocalypse_6-wallpaper-960x540'), LOAD_FILE('d:\\dbd3bdad5e8d2e25ff38b9851b20c724-700'), LOAD_FILE('d:\\xV5xj0m'));


update moore_life_members set username = 'Fella01' where firstname = 'Felix'; 
update levelkey set levelkey = '3' where username = 'Fella01';
update userkey set userkey = '4490' where username = 'Fella01';
update moore_life_members set username = 'Left' where firstname = 'Boy';
update userkey set username = 'Left' where username = 'Boy';

select * from Moore_Life_Members;  
select * from Userkey;
select * from LevelKey;
select username from Moore_Life_Members where username ='Fella01' and userpassword ='MNoTy76';

delete from moore_life_members where username = 'Left';
delete from userkey where username = 'Left';
delete from levelkey where username = 'Fella01'; 	
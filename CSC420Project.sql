create database CSC420Project;
use CSC420Project;
show tables;

create table Moore_Life_Members (firstname varchar(45), lastname varchar(45), 
email varchar(45), age int(3), username varchar(45) primary key, userpassword varchar (45));
create table Userkey (username varchar(45), userkey int (7), 
foreign key (username) references Moore_Life_Members(username));
create table LevelKey (username varchar(45), levelkey int(4), 
foreign key (username) references Moore_Life_Members(username));
create table StoryGenre (GenreType varchar(30) not null, 
StoryTitle varchar(30) not null, Description varchar(90) not null);
create table Admin (firstname varchar(45), lastname varchar(45), role varchar(45));
create table Achievements (achievement int not null auto_increment, description varchar(100) not null,
primary key (achievement));

drop table Moore_Life_Members;
drop table Userkey;
drop table levelkey;
drop table StoryGenre;

insert into Moore_Life_Members values ('Felix', 'Crowley', 'fcrowley@email.com', '18', 'Fella01', 'MNoTy76');
insert into LevelKey values ('Fella01', '1');
insert into userkey values('Fella01', '4421');
insert into StoryGenre values ('Action/Adventure', 'Cruzan Apocalypse', 
'A Suspense/Thriller that takes place in the Dystopian Future of St. Croix');
insert into Admin values ('Lorenzo','LaPlace','Lead Programmer');
insert into Admin values ('Lakeesha','Laudat','Web Design/GUI');
insert into Admin values ('KaJeede','Fanus','Co-Programmer/Database');
insert into Achievements values ('Survivor', 'You made it to the end! Congratulations!');
insert into Achievements values ('What a Noob', 'You made bad decisions at every turn. 
Stop playing this game while you are at it.');
insert into Achievements values ('Born a Winner', 'You have not made any detrimental 
decisions up to this point. Keep it up!');
insert into Achievements values ('Horribly impulsive, arent you?', 'You literally made 3 bad decisions 
in a row. Rethink your life decisions carefully...');
insert into Achievements values ('Ready for Action', 'You created an Account.');
insert into Achievements values ('Gone with the Wind', 'You died within 5 minutes of playing. Oops.');
insert into Achievements values ('Too fast, Too careless', 'You died on your first decision? Seriously?');
insert into Achievements values ('The Thinker', 'Spend over 1 minute on a decision.');

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
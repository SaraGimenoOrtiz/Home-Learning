create database kids;
use kids;
create table kids_detail(
kid_id int not null,
Name_kid varchar(20) not null,
Surname_kid varchar(20) not null,
school_id int not null,
yearr int not null,
extra_act varchar(5) not null,
primary key (kid_id)
);

create database schools;
create table schools_detail(
school_id int not null,
name_school varchar(50) not null,
open_date varchar(20) not null,
rate int not null,
price_year int not null,
primary key (school_id)
);

use kids;
insert into kids_detail(kid_id, Name_kid, Surname_kid, school_id, yearr, extra_act)
values('1', 'Jack', 'Smith', '2', '7', 'Yes'),
('2', 'Tom', 'Rice', '1', '6', 'No'),
('3', 'Lara', 'Hutchinson', '3', '4', 'No'),
('4', 'Sara', 'Henry', '2', '8', 'Yes'),
('5', 'Alex', 'Baker', '2', '5', 'Yes'),
('6', 'Matthew', 'Arnold', '1', '6', 'Yes'),
('7', 'Joel', 'Cummings', '4', '9', 'No'),
('8', 'Cristian', 'Grant', '4', '7', 'No'),
('9', 'Irene', 'Miller', '1', '7', 'Yes'),
('10', 'Charles', 'Waters', '2', '5', 'No'),
('11', 'Eva', 'Garza', '3', '6', 'No'),
('12', 'John', 'Mccoy', '3', '8', 'Yes');

explain kids_detail;
select* from kids_detail;

use  kids;
insert into schools_detail(school_id, name_school, open_date, rate, price_year)
values ('1', 'Milverton Primary School', '08/2018', '7', '200'),
('2', 'Brookhurst Primary School', '09/2014', '9', '500'),
('3', 'Ettington School', '01/2000', '6', '350'),
('4', 'Warwick School', '08/2020', '8', '620');

explain schools_detail;
select* from schools_detail;

insert into kids_detail(kid_id, Name_kid, Surname_kid, school_id, yearr, extra_act)
values('13', 'Teresa', 'Rodriguez', '4', '7', 'No');
select*from kids_detail;

update kids_detail
SET yearr='12'
WHERE kid_id=13;
select*from kids_detail;

delete from kids_detail
where kid_id=13;
select*from kids_detail;

select*
from kids_detail
inner join schools_detail
on kids_detail.school_id=schools_detail.school_id;

select* from kids_detail
where yearr='7';

select* from kids_detail, schools_detail
where kids_detail.school_id=schools_detail.school_id AND yearr='9';

select*from kids_detail
where yearr between 5 and 7;

select kid_id, Name_kid, Surname_kid, school_id, yearr, extra_act from kids_detail
order by Surname_kid;

create TABLE member
(
	no number(10) primary key,
	name varchar(20 char),
	regdate date
);

select table_name from user_tables;
select * from member;

insert into member
(no, name, regdate)
values
(20, 'xxx', '2010/11/11');

delete from member;
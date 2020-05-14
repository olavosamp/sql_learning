-- Create instructor table
drop table INSTRUCTOR;
create table INSTRUCTOR(
	INS_ID integer not null,
	LASTNAME varchar(30) not null,
	FIRSTNAME varchar(30) not null,
	CITY varchar(30),
	COUNTRY char(2),
	primary key (INS_ID)
);

-- Insert one entry in instructor table
insert into INSTRUCTOR(
	INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY
)
VALUES(1, 'Ahuja', 'Rav', 'Toronto', 'CA');

-- Insert two entries in instructor table
insert into INSTRUCTOR(
	INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY
)
VALUES
	(2, 'Chong', 'Raul', 'Toronto', 'CA'),
	(3, 'Vasudevan', 'Hima', 'Toronto', 'CA');

-- Select all rows from table
select * from INSTRUCTOR;

-- Select lastname, firstname and country columns of all rows that fulfill condition: city is Toronto
select LASTNAME, FIRSTNAME, COUNTRY from INSTRUCTOR where CITY = 'Toronto';

-- Update Rav entry, changing city column
update INSTRUCTOR
set CITY='Markhan' where INS_ID = 1;

-- Delete Raul entry
delete from INSTRUCTOR where INS_ID = 2;

-- Select all rows from table
select * from INSTRUCTOR;

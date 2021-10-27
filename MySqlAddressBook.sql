
--- uc1 CREATE DATABASE	

create database AddressBookService;
SHOW DATABASE AddressBookService;
 USE AddressBookService;

 --- UC2 create Table name as AddressBook first 
 --and last names, address, citstate, zip, phone numbeand email as its attributes

 create table AddressBook( FName varchar(20) not null,LName varchar(20) not null,
  Address varchar(100),City varchar(20), State varchar(20),
  Zip int not null ,Phn varchar(50) unique not null,Email varchar(50) Unique not null); 

  --- UC3 insert new contact details 

  insert into AddressBook values('Mounika','Addagatla','123','Srcl','Tg',505301,'123','mouna@gamil.com')
  ,('Lalitha','Addagatla','123','Srcl','Tg',505301,'536','lalitha@gamil.com');

  select * from AddressBook

  ----UC4 for edit details of existing one
 
 update  AddressBook set Fname='MounikaNew' where Fname='Mounika';
  select * from AddressBook; -- changes applied

  -----UC5 delete contact
 delete AddressBook where Fname='MounikaNew';
  select * from AddressBook;  --1 row deleted

  --- UC6 for search city or state

  select City from AddressBook where Fname='Lalitha' -- srcl
  select State from AddressBook where Fname='Lalitha' ---tg

  ----UC7  count num of contact using count 

  select Count(City) from AddressBook where FName='Lalitha' GROUP BY FName ; --- 1
  select Count(State) from AddressBook where FName = 'Lalitha' GROUP BY FName ; --1

  -- create some more contacts to the addressbook

  insert into AddressBook values('Mounika','Addagatla','123','Srcl','Tg',505301,'123','mouna@gamil.com'),
  ('Rakesh','Addagatla','asd','Srcl','Tg',505301,'321','raki@gamil.com'),
  ('Aparna','Addagatla','adaf','Srcl','Tg',505301,'654','aparna@gamil.com'),
  ('Mounika3','Addagatla','adfa','Srcl','Tg',505301,'987','mona3@gamil.com'),
  ('Swarna','Addagatla','adaf','Srcl','Tg',505301,'789','swarna@gamil.com');

  select * from AddressBook;

  ---- UC8 Sort by ascending order 
  select * from AddressBook where City='Srcl' order by FName asc; --a-->z
  -- descending order use desc
  select * from AddressBook where City='Srcl' order by FName desc;
    
---- UC9 

-- Add addressbook name and type columns
alter table AddressBook add addressbook_name varchar(20), type varchar(20)

update AddressBook set addressbook_name ='Home' ,type ='Family' where FName='Mounika' or FName='Lalitha'
update AddressBook set addressbook_name='college',type='Friends' where FName='Mounika3' or FName='Rakesh'

select * from AddressBook

update AddressBook set addressbook_name='Office',type ='Collegue' where FName='Aparna' or FName='Swarna'

select * from AddressBook

----uc10 
select type, COUNT(Fname) from AddressBook group by type

---UC11
 Insert into AddressBook values
('Monaa','Adagatla','jp nagar','Srcl', 'Tg','256645','12346','mona@gmail.com','Home','Family')

select * from AddressBook
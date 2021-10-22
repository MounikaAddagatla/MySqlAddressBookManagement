create database AddressBookManagement;
drop database AddressBookManagement;
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

   
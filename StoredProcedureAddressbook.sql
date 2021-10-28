use AddressBookService

create procedure spGetAllAddressBook
As 
Begin try
select * from AddressBook
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH 

exec spGetAllAddressBook

--==========================    ====================================
Create procedure spAddPersonInAddressBook
(
@FName varchar(20),
@LName varchar(20),
@Address varchar(50),
@City varchar(20),
@State varchar(20),
@Zip int,
@Phn varchar(10),
@Email varchar(50)
)
As 
Begin try
insert into AddressBook(FName,LName,Address,City,State,Zip,Phn,Email)values
(@FName,@LName,@Address,@City,@State,@Zip,@Phn,@Email)
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH  

exec spAddPersonInAddressBook
'Dhruva','Gl','Ab nagar','Srcl','Tg',505301,9145689442,'dhrvi@gmail.com'

select * from AddressBook
--===================================================================
Create procedure spUpdateFeildAddressBook
(
@FName varchar(20),
@State varchar(20)
)
As 
Begin try
update AddressBook
set State=@State
where FName=@FName
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH  

exec spUpdateFeildAddressBook
'Mounika','Tg'

select * from AddressBook
--=============================== Delete=========================================

Create procedure spDeleteInAddressBook
(
@FName varchar(20)
)
As 
Begin try
delete from AddressBook where FName=@FName 
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH  

exec spDeleteInAddressBook
'Mounika3'

select * from AddressBook

---============================================================

create procedure spPersonsCityorState 
@City varchar(50),
@State varchar(50)
AS
Begin try
SELECT FName,City,State FROM AddressBook WHERE City = @City or State=@State
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH  

exec spPersonsCityorState
'Srcl','Tg'

---==================================================
create procedure spRetrieveCountOfContactsByCity
(
@City varchar(20)
)
As
Begin try
select * from AddressBook where City=@City
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH 

exec spRetrieveCountOfContactsByCity
'Srcl'

--================================================================

create procedure spRetrieveCountOfContactsByState
(
@State varchar(20)
)
As
Begin try
select * from AddressBook where State=@State
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH 

exec spRetrieveCountOfContactsByState
'Tg'
--=============================================================

select * from AddressBook
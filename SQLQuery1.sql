--create DB
--UC1-Create Database
CREATE DATABASE AddressBook_Service
USE  AddressBook_Service
--UC2-create a Address Book Table with first and last names, address, city,state, zip, 
--phone number and email as its attributes
CREATE TABLE AddressBookDB(PersonID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
EmailID VARCHAR(50) NOT NULL);

SELECT*FROM AddressBookDB

--UC3-Ability to insert new Contacts to Address Book
INSERT INTO AddressBookDB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailID)
 VALUES(
'Sipra','Mishra','MalaAnadapur','Jajpur','Odisha',755043,9668687835,'sipramishra252@gmail.com'),(
'Lipsa','Panda','Rudhia','DKL','Jaipur',755044,9668687855,'lipsapanda@gmail.com'),(
'Sabitri','Sahoo','Amalapada','Kalahandi','Karnataka',755423,9868687835,'sabitrisahoo@gmail.com'),(
'Likhit','Praharaj','Bls','Balasore','Tamilnadu',754055,9668687255,'likhitpraharaj@gmail.com')

--ctr+s
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
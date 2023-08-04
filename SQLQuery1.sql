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

--UC4-Ability to edit existing contact person using their Name
UPDATE AddressBookDB SET City='VYR' WHERE FirstName='Sipra';
SELECT*FROM AddressBookDB

--UC5-Ability to delete a person using person's Name
DELETE AddressBookDB WHERE FirstName='Sipra';

--UC6--Ability to Retrieve Person belonging to a City or State from the Address Book
SELECT*FROM AddressBookDB WHERE City='DKL';
SELECT*FROM AddressBookDB WHERE State='Jaipur';

--UC7--Ability to understand the size of address book by City and State
SELECT COUNT(*)FROM AddressBookDB WHERE City='DKL';
SELECT COUNT(*)FROM AddressBookDB WHERE State='Karnataka';

--UC8--Ability to retrieve entries sorted alphabetically by Person’s name for a given city
SELECT*FROM AddressBookDB ORDER BY City DESC;
SELECT*FROM AddressBookDB ORDER BY FirstName;

--UC9--Ability to identify each Address Book with name and Type
ALTER TABLE AddressBookDB ADD AddressBookType VARCHAR(50);
ALTER TABLE AddressBookDB ADD AddressBookName VARCHAR(60);
SELECT*FROM AddressBookDB
UPDATE AddressBookDB SET AddressBookType='Friends' ,  AddressBookName='Hari' 
WHERE PersonID=4
UPDATE AddressBookDB SET AddressBookType='Family' ,  AddressBookName='Sister' 
WHERE PersonID=3
UPDATE AddressBookDB SET AddressBookType='Profession' ,  AddressBookName='Doctor' 
WHERE PersonID=5

--UC10--Ability to get number of contact persons i.e. count by type
SELECT AddressBookType,COUNT(AddressBookType) AS Sipra FROM AddressBookDB GROUP BY AddressBookType; 

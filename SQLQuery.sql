CREATE TABLE Persons
(
    Id INT IDENTITY PRIMARY KEY,
    FirstName NVARCHAR(30) NOT NULL,
    SecondName NVARCHAR(20) NOT NULL,
    Age INT,
	Gender NVARCHAR(1),
	Addres NVARCHAR(30)
)

INSERT Persons VALUES ('Tom', 'Lest', 5, 'm', 'address1');
INSERT Persons VALUES ('Bob', 'West', 25, 'm', 'address1');
INSERT Persons VALUES ('Lucy', 'Mest', 35, 'f', 'address1');
INSERT Persons VALUES ('Maria', 'Rest', 55, 'f', 'address1');
INSERT Persons VALUES ('Karl', 'Test', 65, 'm', 'address1');
INSERT Persons VALUES ('Leo', 'Nest', 15, 'm', 'address1');
INSERT Persons VALUES ('Jerry', 'Rest', 45, 'm', 'address1');
INSERT Persons VALUES ('Iren', 'Sest', 35, 'f', 'address1');
INSERT Persons VALUES ('Alice', 'Yest', 10, 'f', 'address1');
INSERT Persons VALUES ('Mark', 'Pest', 1, 'm', 'address1');
INSERT Persons VALUES ('Nataly', 'West', 7, 'f', 'address1');
INSERT Persons VALUES ('Fil', 'Lest', 60, 'm', 'address1');
INSERT Persons VALUES ('Elen', 'Lest', 66, 'f', 'address1');
INSERT Persons VALUES ('Frazy', 'Test', 45, 'f', 'address1');
INSERT Persons VALUES ('Peter', 'Hest', 20, 'm', 'address1');
INSERT Persons VALUES ('Nila', 'Test', 34, 'f', '');
INSERT Persons VALUES ('Ares', 'Hest', 20, 'm', '');

--select all males
SELECT FirstName, SecondName FROM Persons as P 
WHERE Gender = 'm'

--select all persons with age about 18
SELECT FirstName, SecondName, Age FROM Persons as P 
WHERE Age > 18

--select all persons without address
SELECT FirstName, SecondName FROM Persons as P 
WHERE Addres = ''

--update age of all persons, add 1 year
UPDATE Persons SET Age = Age+1

--delete all rows without address
DELETE FROM Persons WHERE Addres = ''

--count number of rows in table
SELECT Count(*) FROM Persons as P 

--group persons by age and show how many persons with same age
SELECT Age, Count(*) as CountSameAge FROM Persons as P 
GROUP BY Age
--checked

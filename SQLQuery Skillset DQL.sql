CREATE DATABASE WINEDB;

USE WINEDB;

CREATE TABLE Wine (
					NUMW INT PRIMARY KEY NOT NULL, 
					Category VARCHAR (50), Year INT, Degree INT
);

CREATE TABLE Producer (
					NUMP INT PRIMARY KEY NOT NULL, 
					FirstName VARCHAR (50), 
					LastName VARCHAR (50),
					Region VARCHAR (50)
);

CREATE TABLE Harvest (
					NUMH INT PRIMARY KEY,
					NUMP INT FOREIGN KEY REFERENCES Producer (NUMP)
					ON DELETE CASCADE,
					NUMW INT FOREIGN KEY REFERENCES Wine(NUMW)
					ON DELETE CASCADE,
					QUANTITY INT
);

INSERT INTO Wine VALUES
				(1, 'Red', 2012, 9),
				(2, 'Rose', 2022, 14),
				(3, 'Sparkling', 2009, 12),
				(4, 'Rose', 2018, 16),
				(5, 'White', 2004, 10),
				(6, 'Sparkling', 2012, 11),
				(7, 'White', 2017, 13),
				(8, 'Red', 2006, 11),
				(9, 'Red', 2023, 18),
				(10, 'White', 2006, 17),
				(11,'Rose', 2008, 12),
				(12, 'Sparkling', 2001, 13),
				(13, 'White', 2012, 11),
				(14, 'Rose', 2003, 14),
				(15, 'Red', 2020, 9),
				(16, 'Sparkling', 2011, 5),
				(17, 'Red', 2021, 16),
				(18, 'Rose', 2012, 11),
				(19, 'White', 2019, 18),
				(20, 'Rose', 2024, 9);

INSERT INTO Producer VALUES
				(1, 'Ahmed','Ben Ali', 'Sousse'),
				(2, 'Hichem', 'Trabelsi', 'Tunis'),
				(3, 'Sami', 'Mansouri', 'Sousse'),
				(4, 'Lamia', 'Zoghlami', 'Monastir'),
				(5, 'Mourad', 'Gharbi', 'Sfax'),
				(6, 'Salma', 'Kacem', 'Tunis'),
				(7, 'Fethi', 'Chikhaoui', 'Monastir'),
				(8, 'Fatma', 'Hamdi', 'Tunis'),
				(9, 'Rania', 'Jebali', 'Sfax'),
				(10, 'Amine', 'Bouzid', 'Sousse'),
				(11, 'Manel', 'Slimani', 'Monastir'),
				(12, 'Khalil', 'Khlifi', 'Sfax'),
				(13, 'Lilia', 'Maatoug', 'Monastir'),
				(14, 'Nizar', 'Saidi', 'Sousse'),
				(15, 'Yassine', 'Jlassi', 'Sfax'),
				(16, 'Anis', 'Mehdi', 'Sfax'),
				(17, 'Karim', 'Belaid', 'Sousse'),
				(18, 'Amina', 'Riahi', 'Monastir'),
				(19, 'Ines', 'Khaled', 'Tunis'),
				(20, 'Imen', 'Chaabane', 'Tunis');

INSERT INTO	Harvest VALUES
				(1, 12, 16, 200),
				(2, 9, 14, 500),
				(3, 15, 8, 300),
				(4, 11, 3, 350),
				(5, 16, 20, 100),
				(6, 5, 1, 300),
				(7, 1, 12, 500),
				(8, 14, 19, 400),
				(9, 6, 15, 200),
				(10, 10, 9, 100),
				(11, 13, 5, 300),
				(12, 8, 2, 400),
				(13, 9, 12, 450),
				(14, 3, 18, 200),
				(15, 12, 11, 150),
				(16, 2, 12, 300),
				(17, 4, 17, 320),
				(18, 17, 13, 200),
				(19, 7, 7, 1000),
				(20, 19, 15, 500),
				(21, 18, 12, 300),
				(22, 2, 11, 1500),
				(23, 5, 1, 800),
				(24, 8, 16, 200),
				(25, 12, 18, 500),
				(26, 16, 13, 900),
				(27, 4, 11, 700),
				(28, 5, 12, 400),
				(29, 11, 8, 700),
				(30, 20, 14, 800),
				(31, 13, 15, 900),
				(32, 20, 17, 1800),
				(33, 12, 13, 1100),
				(34, 15, 7, 700),
				(35, 6, 12, 300),
				(36, 3, 9, 900),
				(37, 1, 16, 800),
				(38, 9, 20, 600),
				(39, 4, 13, 700),
				(40, 8, 16, 400),
				(41, 9, 13, 100),
				(42, 18, 8, 450),
				(43, 14, 1, 300),
				(44, 14, 13, 700),
				(45, 1, 1, 500),
				(46, 4, 17, 1500),
				(47, 5, 18, 1000),
				(48, 7, 14, 700),
				(49, 19, 16, 300),
				(50, 9, 8, 200);


--Write SQL queries to answer the following questions based on your simulated data:
USE WINEDB
--1.	Retrieve all producers --
		SELECT * FROM Producer;

--2.	Retrieve a sorted list of producers by name --
		SELECT * FROM Producer
		ORDER BY FirstName, LastName;

--3.	Retrieve producers from Sousse.
		SELECT * FROM Producer
		WHERE Region = 'Sousse';

--4.	Calculate the total quantity of wine produced for Wine Number 12.
		SELECT Sum (QUANTITY) AS Total_wine_produced FROM Harvest
		WHERE NUMW = 12;

--5.	Calculate the total quantity of wine produced for each category.
		SELECT Category, SUM(Quantity) AS Total_Qty FROM Wine
		JOIN Harvest ON Wine.NUMW = Harvest.NUMW
		GROUP BY Category;

--6.	Find producers from Sousse who harvested at least one wine in quantities greater than 300 liters.
		SELECT FirstName, LastName, Quantity, Region FROM Producer
		JOIN Harvest ON Producer.NUMP = Harvest.NUMP
		WHERE QUANTITY > 300 AND Region = 'Sousse';

--7.	List wine numbers with a degree greater than 12, produced by a specific producer.
		SELECT FirstName, LastName, Harvest.NUMW, Degree FROM Harvest
		JOIN Wine ON Wine.NUMW = Harvest.NUMW
		JOIN Producer ON Producer.NUMP = Harvest.NUMP
		WHERE Degree > 12;

--8.	Find the producer who has produced the highest quantity of wine.
		SELECT TOP 1 FirstName, LastName, SUM(Quantity) AS Total_Qty FROM Producer
		JOIN Harvest ON Producer.NUMP = Harvest.NUMP
		GROUP BY FirstName, LastName
		ORDER BY Total_Qty DESC

--9.	Calculate the average degree of wine produced.
		SELECT AVG(Degree) AS Ave_degree FROM Wine
		
--10.	Find the oldest wine in the database.
		SELECT TOP 1 Category, Min(Year) AS Oldest_Wine, FirstName, LastName, SUM(Quantity) AS QTY FROM Wine
		JOIN Harvest ON Wine.NUMW = Harvest.NUMW
		JOIN Producer ON Producer.NUMP = Harvest.NUMP
		GROUP BY Category, FirstName, LastName
		ORDER BY Oldest_Wine

--11.	Retrieve a list of producers along with the total quantity of wine they have produced.
		SELECT FirstName, LastName, Sum(Quantity) AS Total_Qty_Wine FROM Producer
		JOIN Harvest ON Producer.NUMP = Harvest.NUMP
		GROUP BY FirstName, LastName
		ORDER BY Total_Qty_Wine DESC;

--12.	Retrieve a list of wines along with their producer details.
		SELECT Wine.NUMW, Category, FirstName, LastName, Region,  SUM(Quantity) AS [Qty Produced] FROM Producer
		JOIN Harvest ON Producer.NUMP = Harvest.NUMP
		JOIN Wine ON Wine.NUMW = Harvest.NUMW
		GROUP BY Wine.NUMW, FirstName, LastName, Region, Category
		ORDER BY Wine.NUMW;

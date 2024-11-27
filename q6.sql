SELECT *
FROM sales_contracts s
JOIN inventory i
	ON i.VIN = s.VIN
WHERE i.Dealership_ID = 2;

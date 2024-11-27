SELECT v.VIN, v.Make, v.Model, d.Dealership_Name AS Dealership
FROM inventory i
JOIN vehicles v
	ON i.VIN = v.VIN
JOIN dealerships d
	ON i.Dealership_ID = d.Dealership_ID
    WHERE d.Dealership_Name LIKE 'Aarons Auto';
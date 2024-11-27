SELECT dealership_name
FROM dealerships d
JOIN inventory i
	ON d.Dealership_ID = i.Dealership_ID
JOIN vehicles v
	ON v.VIN = i.VIN
WHERE v.Color LIKE 'white' AND v.Make LIKE 'BMW' AND v.Model LIKE 'Z4';
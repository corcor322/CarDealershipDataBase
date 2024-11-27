SELECT dealership_name
FROM dealerships d
JOIN inventory i
	ON i.Dealership_ID = d.Dealership_ID
    WHERE i.VIN LIKE '4T1BE46KX6U456789';
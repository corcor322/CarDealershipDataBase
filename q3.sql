SELECT v.VIN, v.Make, v.Model
FROM inventory i
JOIN vehicles v
	ON i.VIN = v.VIN
    WHERE i.VIN LIKE '1FTNE1ZM9FKA56789';
-- Problem 33: Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles
SELECT MIN(V.Engine_CC) AS MINENG ,
MAX(V.Engine_CC) AS MAXENG , 
AVG (V.Engine_CC) AS AVGENG

		FROM VehicleDetails V ;
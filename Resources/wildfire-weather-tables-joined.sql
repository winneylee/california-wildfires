CREATE TABLE "Wildfire-Temperature-Rainfall" AS
(SELECT "Wildfires"."UniqueID", "Wildfires"."MeasurementID", 
 "Wildfires"."AcresBurned", "Wildfires"."Latitude",
 "Wildfires"."Longitude", "Wildfires"."Month",
 "Temperature-Rainfall"."Year", "Temperature-Rainfall"."LocationID", 
 "Temperature-Rainfall"."Location", "Temperature-Rainfall"."Value",
 "Temperature-Rainfall"."MinTemp", "Temperature-Rainfall"."MaxTemp", 
 "Temperature-Rainfall"."AvgTemp"
FROM "Wildfires"
LEFT JOIN "Temperature-Rainfall"
ON "Wildfires"."MeasurementID" = "Temperature-Rainfall"."MeasurementID"
ORDER BY "Temperature-Rainfall"."MeasurementID")
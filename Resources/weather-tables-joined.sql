CREATE TABLE "Temperature-Rainfall" AS
(SELECT "Rainfall"."MeasurementID", "Rainfall"."Year", "Rainfall"."LocationID", "Rainfall"."Location", "Rainfall"."Value",
"Temperature"."MinTemp", "Temperature"."MaxTemp", "Temperature"."AvgTemp"
FROM "Rainfall"
LEFT JOIN "Temperature"
ON "Rainfall"."MeasurementID" = "Temperature"."MeasurementID"
ORDER BY "Rainfall"."MeasurementID")
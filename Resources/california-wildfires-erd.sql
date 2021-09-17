CREATE TABLE "Wildfires" (
    "WildfireID" varchar   UNIQUE NOT NULL,
    "AcresBurned" float   NOT NULL,
    "Latitude" float   NOT NULL,
    "Longitude" float   NOT NULL,
    "Month" smallint   NOT NULL,
    "Year" smallint   NOT NULL,
    "Location" varchar   NOT NULL,
    CONSTRAINT "pk_Wildfires" PRIMARY KEY (
        "WildfireID"
     )
);

CREATE TABLE "Temperature" (
    "MeasurementID" varchar   UNIQUE NOT NULL,
    "Year" smallint   NOT NULL,
    "LocationID" varchar   NOT NULL,
    "Location" varchar   NOT NULL,
    "MinTemp" float   NOT NULL,
    "MaxTemp" float   NOT NULL,
    "AvgTemp" float   NOT NULL,
    CONSTRAINT "pk_Temperature" PRIMARY KEY (
        "MeasurementID"
     )
);

CREATE TABLE "Rainfall" (
    "MeasurementID" varchar   UNIQUE NOT NULL,
    "Year" smallint   NOT NULL,
    "LocationID" varchar   NOT NULL,
    "Location" varchar   NOT NULL,
    "Value" float   NOT NULL,
    CONSTRAINT "pk_Rainfall" PRIMARY KEY (
        "MeasurementID"
     )
);

ALTER TABLE "Wildfires" ADD CONSTRAINT "fk_Wildfires_Year_Location" FOREIGN KEY("Year", "Location")
REFERENCES "Temperature" ("Year", "Location");

ALTER TABLE "Temperature" ADD CONSTRAINT "fk_Temperature_LocationID_Location" FOREIGN KEY("LocationID", "Location")
REFERENCES "Rainfall" ("LocationID", "Location");

ALTER TABLE "Rainfall" ADD CONSTRAINT "fk_Rainfall_Year" FOREIGN KEY("Year")
REFERENCES "Temperature" ("Year");


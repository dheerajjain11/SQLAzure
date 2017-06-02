/****** Script for SelectTopNRows command from SSMS  ******/

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Router2Hub';

CREATE DATABASE SCOPED CREDENTIAL FacilityCredential
WITH IDENTITY = 'dheerajsql',
SECRET = 'Dheer516';

CREATE EXTERNAL DATA SOURCE FacilitySource
WITH (
TYPE=RDBMS,
LOCATION='jabtdheeraj.database.windows.net',
DATABASE_NAME='FacilityDB',
CREDENTIAL= FacilityCredential);

CREATE EXTERNAL TABLE dbo.Facility (
FacilityID int,
FacilityName varchar(50),
[Location] varchar(50))
WITH
(
DATA_SOURCE = FacilitySource);

select * from Facility;

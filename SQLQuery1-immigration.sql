
-------------Table 1-Citizenship------------
-------------Create Table-------------------
IF OBJECT_ID('SP_Country_of_Citizenship_Edited') IS NOT NULL DROP TABLE SP_Country_of_Citizenship_Edited

CREATE TABLE SP_Country_of_Citizenship_Edited
(Country_of_Citizenship NVARCHAR(200),
[2015] FLOAT,
[2016] FLOAT,
[2017] FLOAT,
[2018] FLOAT,
[2019] FLOAT,
[2020] FLOAT,
[2021] FLOAT,
[2022] FLOAT,
[2023] FLOAT)

--SELECT * FROM SP_Country_of_Citizenship_Edited

-------------Import Excel-------

BULK INSERT SP_Country_of_Citizenship_Edited
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP Country of Citizenship csv.csv'
WITH (FORMAT= 'CSV');

--SELECT * FROM SP_Country_of_Citizenship_Edited




-------------Table 2-Gender------------
-------------Create Table-------------------
IF OBJECT_ID('SP_gender') IS NOT NULL DROP TABLE SP_gender

CREATE TABLE SP_gender
([Year] NVARCHAR(200),
Male FLOAT,
Female FLOAT,
Another_gender FLOAT,
Not_stated FLOAT,
)

--SELECT * FROM SP_gender

-------------Import Excel-------

BULK INSERT SP_gender
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP holders by gender csv.csv'
WITH (FORMAT= 'CSV');

--SELECT * FROM SP_gender



-------------Table 3-Province------------
-------------Create Table-------------------
IF OBJECT_ID('SP_province') IS NOT NULL DROP TABLE SP_province

CREATE TABLE SP_province
([Year] NVARCHAR(200),
Newfoundland_and_labrador FLOAT,
Prince_Edward_Island FLOAT,
Nova_Scotia FLOAT,
New_Brunswick FLOAT,
Quebec FLOAT,
Ontario FLOAT,
Manitoba FLOAT,
Saskatchewan FLOAT,
Alberta FLOAT,
British_Columbia FLOAT,
Yukon FLOAT,
Northwest_territories FLOAT,
Nunavut FLOAT,
Provinces_not_stated FLOAT
)

--SELECT * FROM SP_province

-------------Import Excel-------

BULK INSERT SP_province
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP holders by province csv.csv'
WITH (FORMAT= 'CSV');

--SELECT * FROM SP_province




-------------Table 4-Study_level------------
-------------Create Table-------------------
IF OBJECT_ID('SP_Study_level') IS NOT NULL DROP TABLE SP_Study_level

CREATE TABLE SP_Study_level
([Year] NVARCHAR(200),
Secondary_or_less FLOAT,
Post_secondary FLOAT,
Other_studies FLOAT,
Education_level_not_stated FLOAT
)

--SELECT * FROM SP_Study_level

-------------Import Excel-------

BULK INSERT SP_Study_level
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP holders by study level csv.csv'
WITH (FORMAT= 'CSV');

--SELECT * FROM SP_Study_level




----------Create stored procedure-----------------
CREATE PROCEDURE Citizenship_stored AS
IF OBJECT_ID('SP_Country_of_Citizenship_Edited') IS NOT NULL DROP TABLE SP_Country_of_Citizenship_Edited

CREATE TABLE SP_Country_of_Citizenship_Edited
(Country_of_Citizenship NVARCHAR(200),
[2015] FLOAT,
[2016] FLOAT,
[2017] FLOAT,
[2018] FLOAT,
[2019] FLOAT,
[2020] FLOAT,
[2021] FLOAT,
[2022] FLOAT,
[2023] FLOAT)


BULK INSERT SP_Country_of_Citizenship_Edited
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP Country of Citizenship csv.csv'
WITH (FORMAT= 'CSV');

--EXEC Citizenship_stored


------Table 2 -----------
CREATE PROCEDURE Gender_stored AS
IF OBJECT_ID('SP_gender') IS NOT NULL DROP TABLE SP_gender

CREATE TABLE SP_gender
([Year] NVARCHAR(200),
Male FLOAT,
Female FLOAT,
Another_gender FLOAT,
Not_stated FLOAT,
)


BULK INSERT SP_gender
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP holders by gender csv.csv'
WITH (FORMAT= 'CSV');

--EXEC Gender_stored


---------Table 3----------
CREATE PROCEDURE Province_stored AS
IF OBJECT_ID('SP_province') IS NOT NULL DROP TABLE SP_province

CREATE TABLE SP_province
([Year] NVARCHAR(200),
Newfoundland_and_labrador FLOAT,
Prince_Edward_Island FLOAT,
Nova_Scotia FLOAT,
New_Brunswick FLOAT,
Quebec FLOAT,
Ontario FLOAT,
Manitoba FLOAT,
Saskatchewan FLOAT,
Alberta FLOAT,
British_Columbia FLOAT,
Yukon FLOAT,
Northwest_territories FLOAT,
Nunavut FLOAT,
Provinces_not_stated FLOAT
)


BULK INSERT SP_province
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP holders by province csv.csv'
WITH (FORMAT= 'CSV');

--EXEC Province_stored


-------------Table 4 -------------
CREATE PROCEDURE Studylevel_stored AS
IF OBJECT_ID('SP_Study_level') IS NOT NULL DROP TABLE SP_Study_level

CREATE TABLE SP_Study_level
([Year] NVARCHAR(200),
Secondary_or_less FLOAT,
Post_secondary FLOAT,
Other_studies FLOAT,
Education_level_not_stated FLOAT
)

--SELECT * FROM SP_Study_level

-------------Import Excel-------

BULK INSERT SP_Study_level
FROM 'C:\Users\User\Documents\Academic\Post Graduate\Immigration_project\Study_permit data\SP holders by study level csv.csv'
WITH (FORMAT= 'CSV');

--EXEC Studylevel_stored
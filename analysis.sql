-- index for faster query

CREATE INDEX pickup_datetime_green ON trip_green (pickup_datetime) ;
CREATE INDEX pickup_datetime_yellow ON trip_yellow (pickup_datetime) ;

-- example of saving data to a csv file

COPY (select * from trip_green where pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-01-31') 
to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015.csv' DELIMITER ',' CSV HEADER ;

-- create table for data in 2014_04_to_09 where yellow, green and uber data are all available

DROP TABLE IF EXISTS Trip_data_2014_04_to_09;
CREATE TABLE Trip_data_2014_04_to_09 AS
SELECT pickup_datetime, cab_types FROM trip_green 
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-09-30' 
UNION ALL
SELECT pickup_datetime, cab_types FROM trip_yellow 
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-09-30'  
UNION ALL
SELECT pickup_datetime, cab_types FROM trip_uber_2014 
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-09-30' ;

-- create table for data in 2015_01_to_06 where yellow, green and uber data are all available

DROP TABLE IF EXISTS Trip_data_2015_01_to_06;
CREATE TABLE Trip_data_2015_01_to_06 AS
SELECT pickup_datetime, cab_types FROM trip_green 
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-06-30' 
UNION ALL
SELECT pickup_datetime, cab_types FROM trip_yellow 
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-06-30'  
UNION ALL
SELECT pickup_datetime, cab_types FROM trip_uber_2015 
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-06-30' ;

-- get monthly number of trip

DROP TABLE IF EXISTS number_of_trips_monthly_2014_04_to_09;
CREATE TABLE number_of_trips_monthly_2014_04_to_09 AS
SELECT cab_types, date_trunc('month', pickup_datetime), COUNT(cab_types) AS number_of_trips from Trip_data_2014_04_to_09 GROUP BY cab_types, date_trunc('month', pickup_datetime) ;

COPY number_of_trips_monthly_2014_04_to_09 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_monthly_2014_04_to_09.csv' DELIMITER ',' CSV HEADER ;


DROP TABLE IF EXISTS number_of_trips_monthly_2015_01_to_06;
CREATE TABLE number_of_trips_monthly_2015_01_to_06 AS
SELECT cab_types, date_trunc('month', pickup_datetime), COUNT(cab_types) AS number_of_trips from Trip_data_2015_01_to_06 GROUP BY cab_types, date_trunc('month', pickup_datetime) ;

COPY number_of_trips_monthly_2015_01_to_06 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_monthly_2015_01_to_06.csv' DELIMITER ',' CSV HEADER ;

-- get hourly number of trip

DROP TABLE IF EXISTS number_of_trips_hourly_2014_04_to_09;
CREATE TABLE number_of_trips_hourly_2014_04_to_09 AS
SELECT cab_types, date_part('hour', pickup_datetime), COUNT(cab_types) AS number_of_trips from Trip_data_2014_04_to_09 GROUP BY cab_types, date_part('hour', pickup_datetime) ;

COPY number_of_trips_hourly_2014_04_to_09 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_hourly_2014_04_to_09.csv' DELIMITER ',' CSV HEADER ;


DROP TABLE IF EXISTS number_of_trips_hourly_2015_01_to_06;
CREATE TABLE number_of_trips_hourly_2015_01_to_06 AS
SELECT cab_types, date_part('hour', pickup_datetime), COUNT(cab_types) AS number_of_trips from Trip_data_2015_01_to_06 GROUP BY cab_types, date_part('hour', pickup_datetime) ;

COPY number_of_trips_hourly_2015_01_to_06 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_hourly_2015_01_to_06.csv' DELIMITER ',' CSV HEADER ;

-- get "day of week" number of trip

DROP TABLE IF EXISTS number_of_trips_dow_2014_04_to_09;
CREATE TABLE number_of_trips_dow_2014_04_to_09 AS
SELECT cab_types, EXTRACT(dow from pickup_datetime), COUNT(cab_types) AS number_of_trips from Trip_data_2014_04_to_09 GROUP BY cab_types, EXTRACT(dow from pickup_datetime) ;

COPY number_of_trips_dow_2014_04_to_09 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_dow_2014_04_to_09.csv' DELIMITER ',' CSV HEADER ;


DROP TABLE IF EXISTS number_of_trips_dow_2015_01_to_06;
CREATE TABLE number_of_trips_dow_2015_01_to_06 AS
SELECT cab_types, EXTRACT(dow from pickup_datetime), COUNT(cab_types) AS number_of_trips from Trip_data_2015_01_to_06 GROUP BY cab_types, EXTRACT(dow from pickup_datetime) ;

COPY number_of_trips_dow_2015_01_to_06 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_dow_2015_01_to_06.csv' DELIMITER ',' CSV HEADER ;

-- Uber 2015 by zone & borough

DROP TABLE IF EXISTS uber_data_2015;
CREATE TABLE uber_data_2015 AS
SELECT pickup_datetime, trip_uber_2015.location_id, borough, zone, ntacode 
FROM trip_uber_2015 LEFT OUTER JOIN uber_zone_lookups on trip_uber_2015.location_id = uber_zone_lookups.location_id  
ORDER BY pickup_datetime ASC ;

DROP TABLE IF EXISTS number_of_trips_uber_zone;
CREATE TABLE number_of_trips_uber_zone AS
SELECT borough, zone, COUNT(location_id) AS number_of_trips from uber_data_2015 GROUP BY borough, zone ORDER BY borough ASC ;

COPY number_of_trips_uber_zone to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/number_of_trips_uber_zone.csv' DELIMITER ',' CSV HEADER ;

-- Uber 2014 

COPY trip_uber_2014 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/trip_uber_2014.csv' DELIMITER ',' CSV HEADER ;


-- 2015-12

CREATE TABLE Trip_taxi_2015_12 AS
SELECT pickup_datetime, dropoff_datetime, cab_types, trip_distance, tip_amount, tolls_amount, fare_amount, total_amount, payment_type FROM trip_green 
WHERE pickup_datetime >= '2015-12-01' and pickup_datetime <= '2015-12-31' and fare_amount > 0 and tip_amount >= 0 and trip_distance > 0 and tip_amount <= total_amount
UNION ALL
SELECT pickup_datetime, dropoff_datetime, cab_types, trip_distance, tip_amount, tolls_amount, fare_amount, total_amount, payment_type FROM trip_yellow 
WHERE pickup_datetime >= '2015-12-01' and pickup_datetime <= '2015-12-31' and fare_amount > 0 and tip_amount >= 0 and trip_distance > 0 and tip_amount <= total_amount ;

select avg(tip_amount/(total_amount-tip_amount)) from Trip_taxi_2015_12 where payment_type = '1' ;
select count(tolls_amount) filter (where tolls_amount>0)/count(tolls_amount) ::float, avg(tolls_amount) filter (where tolls_amount>0) from Trip_taxi_2015_12 where payment_type = '1';

select avg(EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))/60) as avg_trip_length, 
avg(trip_distance) as avg_trip_distance, avg(trip_distance/(EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))/60))*60 as avg_mph 
from Trip_taxi_2015_12 where EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))>0 
and trip_distance/EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))*60 < 1.5 
and trip_distance/EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))*60 > 0.015 ;

-- same thing for the entire 2015

CREATE TABLE Trip_taxi_2015 AS
SELECT pickup_datetime, dropoff_datetime, cab_types, trip_distance, tip_amount, tolls_amount, fare_amount, total_amount, payment_type FROM trip_green 
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-12-31' and fare_amount > 0 and tip_amount >= 0 and trip_distance > 0 and tip_amount <= total_amount
UNION ALL
SELECT pickup_datetime, dropoff_datetime, cab_types, trip_distance, tip_amount, tolls_amount, fare_amount, total_amount, payment_type FROM trip_yellow 
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-12-31' and fare_amount > 0 and tip_amount >= 0 and trip_distance > 0 and tip_amount <= total_amount ;

select avg(tip_amount/(total_amount-tip_amount)) from Trip_taxi_2015 where payment_type = '1' ;
select count(tolls_amount) filter (where tolls_amount>0)/count(tolls_amount) ::float, avg(tolls_amount) filter (where tolls_amount>0) from Trip_taxi_2015 where payment_type = '1';

select avg(EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))/60) as avg_trip_length, 
avg(trip_distance) as avg_trip_distance, avg(trip_distance/(EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))/60))*60 as avg_mph 
from Trip_taxi_2015 where EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))>0 
and trip_distance/EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))*60 < 1.5 
and trip_distance/EXTRACT(epoch FROM (dropoff_datetime-pickup_datetime))*60 > 0.015 ;
-- Random sampling 2014 uber data

-- test one month

DROP TABLE IF EXISTS uber_sample_2014_04;
CREATE TABLE uber_sample_2014_04 AS
SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-04-30'
ORDER BY random()
LIMIT 10000;
COPY uber_sample_2014_04 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/uber_sample_2014_04.csv' DELIMITER ',' CSV HEADER ;

-- the entire period

DROP TABLE IF EXISTS uber_sample_2014;
CREATE TABLE uber_sample_2014 AS
(SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-04-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-05-01' and pickup_datetime <= '2014-05-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-06-01' and pickup_datetime <= '2014-06-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-07-01' and pickup_datetime <= '2014-07-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-08-01' and pickup_datetime <= '2014-08-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_uber_2014
WHERE pickup_datetime >= '2014-09-01' and pickup_datetime <= '2014-09-30'
ORDER BY random()
LIMIT 10000);

COPY uber_sample_2014 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/uber_sample_2014.csv' DELIMITER ',' CSV HEADER ;


-- Random sampling 2014 green data

-- test one month

DROP TABLE IF EXISTS green_sample_2014_04;
CREATE TABLE green_sample_2014_04 AS
SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-04-30'
ORDER BY random()
LIMIT 10000;
COPY green_sample_2014_04 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/green_sample_2014_04.csv' DELIMITER ',' CSV HEADER ;

-- the entire period

DROP TABLE IF EXISTS green_sample_2014;
CREATE TABLE green_sample_2014 AS
(SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-04-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-05-01' and pickup_datetime <= '2014-05-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-06-01' and pickup_datetime <= '2014-06-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-07-01' and pickup_datetime <= '2014-07-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-08-01' and pickup_datetime <= '2014-08-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2014-09-01' and pickup_datetime <= '2014-09-30'
ORDER BY random()
LIMIT 10000);

COPY green_sample_2014 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/green_sample_2014.csv' DELIMITER ',' CSV HEADER ;

-- Random sampling 2014 yellow data

-- test one month

DROP TABLE IF EXISTS yellow_sample_2014_04;
CREATE TABLE yellow_sample_2014_04 AS
SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-04-30'
ORDER BY random()
LIMIT 10000;
COPY yellow_sample_2014_04 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/yellow_sample_2014_04.csv' DELIMITER ',' CSV HEADER ;

-- the entire period

DROP TABLE IF EXISTS yellow_sample_2014;
CREATE TABLE yellow_sample_2014 AS
(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-04-01' and pickup_datetime <= '2014-04-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-05-01' and pickup_datetime <= '2014-05-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-06-01' and pickup_datetime <= '2014-06-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-07-01' and pickup_datetime <= '2014-07-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-08-01' and pickup_datetime <= '2014-08-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2014-09-01' and pickup_datetime <= '2014-09-30'
ORDER BY random()
LIMIT 10000);

COPY yellow_sample_2014 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/yellow_sample_2014.csv' DELIMITER ',' CSV HEADER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------

-- Random sampling 2015 uber data

DROP TABLE IF EXISTS uber_sample_2015_01;
CREATE TABLE uber_sample_2015_01 AS
SELECT * FROM uber_data_2015
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-01-31'
ORDER BY random()
LIMIT 10000;
COPY uber_sample_2015_01 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/uber_sample_2015_01.csv' DELIMITER ',' CSV HEADER ;

-- Random sampling 2015 green data

DROP TABLE IF EXISTS green_sample_2015;
CREATE TABLE green_sample_2015 AS
(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-01-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-02-01' and pickup_datetime <= '2015-02-28'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-03-01' and pickup_datetime <= '2015-03-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-04-01' and pickup_datetime <= '2015-04-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-05-01' and pickup_datetime <= '2015-05-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-06-01' and pickup_datetime <= '2015-06-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-07-01' and pickup_datetime <= '2015-07-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-08-01' and pickup_datetime <= '2015-08-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-09-01' and pickup_datetime <= '2015-09-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-10-01' and pickup_datetime <= '2015-10-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-11-01' and pickup_datetime <= '2015-11-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_green
WHERE pickup_datetime >= '2015-12-01' and pickup_datetime <= '2015-12-31'
ORDER BY random()
LIMIT 10000);

COPY green_sample_2015 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/green_sample_2015.csv' DELIMITER ',' CSV HEADER ;

-- Random sampling 2015 yellow data

DROP TABLE IF EXISTS yellow_sample_2015;
CREATE TABLE yellow_sample_2015 AS
(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-01-01' and pickup_datetime <= '2015-01-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-02-01' and pickup_datetime <= '2015-02-28'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-03-01' and pickup_datetime <= '2015-03-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-04-01' and pickup_datetime <= '2015-04-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-05-01' and pickup_datetime <= '2015-05-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-06-01' and pickup_datetime <= '2015-06-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-07-01' and pickup_datetime <= '2015-07-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-08-01' and pickup_datetime <= '2015-08-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-09-01' and pickup_datetime <= '2015-09-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-10-01' and pickup_datetime <= '2015-10-31'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-11-01' and pickup_datetime <= '2015-11-30'
ORDER BY random()
LIMIT 10000)

UNION ALL

(SELECT * FROM trip_yellow
WHERE pickup_datetime >= '2015-12-01' and pickup_datetime <= '2015-12-31'
ORDER BY random()
LIMIT 10000);

COPY yellow_sample_2015 to 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Sample/yellow_sample_2015.csv' DELIMITER ',' CSV HEADER ;
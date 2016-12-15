-- Only using 2014 and 2015 data for this project

-- import the green taxi data into the trip_green table created in the create_schema.sql file
-- green_trip files before 2015 have the same header 

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-01.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-02.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-03.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-04.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-05.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-06.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-07.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-08.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-09.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-10.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-11.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2014-12.csv' DELIMITER ',' CSV HEADER ;

-- green_trip files 2015_01 - 2015_06 have the same header 

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-01.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-02.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-03.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-04.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-05.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,trip_type,junk1,
junk2) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-06.csv' DELIMITER ',' CSV HEADER ;

-- green_trip files 2015_07 - 2015_012 have the same header 

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,
trip_type) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-07.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,
trip_type) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-08.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,
trip_type) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-09.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,
trip_type) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-10.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,
trip_type) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-11.csv' DELIMITER ',' CSV HEADER ;

COPY trip_green(vendor_id,pickup_datetime,dropoff_datetime,store_and_fwd_flag,rate_code_id, pickup_longitude,pickup_latitude,dropoff_longitude,dropoff_latitude,passenger_count,trip_distance,fare_amount,extra,mta_tax,tip_amount,tolls_amount,ehail_fee,improvement_surcharge,total_amount,payment_type,
trip_type) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/green_tripdata_2015-12.csv' DELIMITER ',' CSV HEADER ;


-- import the yellow taxi data into the trip_yellow table created in the create_schema.sql file
-- yellow trip files before 2015 have the same header

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-01.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-02.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-03.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-04.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-05.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-06.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-07.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-08.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-09.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-10.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-11.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2014-12.csv' DELIMITER ',' CSV HEADER ;

-- yellow trip files after 2015 have the same header

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-01.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-02.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-03.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-04.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-05.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-06.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-07.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-08.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-09.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-10.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-11.csv' DELIMITER ',' CSV HEADER ;

COPY trip_yellow(vendor_id,pickup_datetime,dropoff_datetime,passenger_count,trip_distance,pickup_longitude,pickup_latitude,rate_code_id,store_and_fwd_flag,dropoff_longitude,dropoff_latitude,payment_type,fare_amount,extra,mta_tax,tip_amount,tolls_amount,improvement_surcharge,
total_amount) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/yellow_tripdata_2015-12.csv' DELIMITER ',' CSV HEADER ;


-- import the uber 2014 data into the trip_uber_2014 table created in the create_schema.sql file
-- uber 2014-04~09

COPY trip_uber_2014 (pickup_datetime,pickup_latitude,pickup_longitude,
base_num) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-apr14.csv' DELIMITER ',' CSV HEADER ;

COPY trip_uber_2014 (pickup_datetime,pickup_latitude,pickup_longitude,
base_num) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-may14.csv' DELIMITER ',' CSV HEADER ;

COPY trip_uber_2014 (pickup_datetime,pickup_latitude,pickup_longitude,
base_num) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-jun14.csv' DELIMITER ',' CSV HEADER ;

COPY trip_uber_2014 (pickup_datetime,pickup_latitude,pickup_longitude,
base_num) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-jul14.csv' DELIMITER ',' CSV HEADER ;

COPY trip_uber_2014 (pickup_datetime,pickup_latitude,pickup_longitude,
base_num) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-aug14.csv' DELIMITER ',' CSV HEADER ;

COPY trip_uber_2014 (pickup_datetime,pickup_latitude,pickup_longitude,
base_num) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-sep14.csv' DELIMITER ',' CSV HEADER ;

-- import the uber 2015 data into the trip_uber_2015 table created in the create_schema.sql file
-- uber 2015-01~06

COPY trip_uber_2015 (Dispatching_base_num,pickup_datetime,affiliated_base_num,
location_id) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/uber-raw-data-janjune-15.csv' DELIMITER ',' CSV HEADER ;

-- import the uber zone lookups data into the uber_zone_lookups table created in the create_schema.sql file
-- uber zone lookups

COPY uber_zone_lookups (location_id,borough,zone,ntacode) FROM 'D:/Harry Zhu/Documents/Internship/Data Incubator/Project/NYC Taxi/Data/taxi-zone-lookup-with-ntacode.csv' DELIMITER ',' CSV HEADER ;

-- add cab_types column to all those tables
ALTER TABLE trip_uber_2014 ADD COLUMN cab_types varchar DEFAULT 'Uber' ;
ALTER TABLE trip_uber_2015 ADD COLUMN cab_types varchar DEFAULT 'Uber' ;
ALTER TABLE trip_green ADD COLUMN cab_types varchar DEFAULT 'Green_Cab' ;
ALTER TABLE trip_yellow ADD COLUMN cab_types varchar DEFAULT 'Yellow_Cab' ;
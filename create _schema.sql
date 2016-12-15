DROP TABLE IF EXISTS trip_green;
CREATE TABLE trip_green (
  id serial primary key,
  vendor_id varchar,
  pickup_datetime timestamp without time zone,
  dropoff_datetime timestamp without time zone,
  store_and_fwd_flag char(1),
  rate_code_id smallint, 
  pickup_longitude numeric,
  pickup_latitude numeric,
  dropoff_longitude numeric,
  dropoff_latitude numeric,
  passenger_count smallint,
  trip_distance numeric,
  fare_amount numeric,
  extra numeric,
  mta_tax numeric,
  tip_amount numeric,
  tolls_amount numeric,
  ehail_fee numeric,
  improvement_surcharge numeric,
  total_amount numeric,
  payment_type varchar,
  trip_type smallint,
  junk1 varchar,
  junk2 varchar
) ;

DROP TABLE IF EXISTS trip_yellow;
CREATE TABLE trip_yellow (
  id serial primary key,
  vendor_id varchar,
  pickup_datetime timestamp without time zone,
  dropoff_datetime timestamp without time zone,
  passenger_count smallint,
  trip_distance numeric,
  pickup_longitude numeric,
  pickup_latitude numeric,
  rate_code_id smallint,
  store_and_fwd_flag char(1),
  dropoff_longitude numeric,
  dropoff_latitude numeric,
  payment_type varchar,
  fare_amount numeric,
  extra numeric,
  mta_tax numeric,
  tip_amount numeric,
  tolls_amount numeric,
  improvement_surcharge numeric,
  total_amount numeric
) ;

DROP TABLE IF EXISTS trip_uber_2014;
CREATE TABLE trip_uber_2014 (
  id serial primary key,
  pickup_datetime timestamp without time zone,
  pickup_longitude numeric,
  pickup_latitude numeric,
  base_num varchar
) ;

DROP TABLE IF EXISTS trip_uber_2015;
CREATE TABLE trip_uber_2015 (
  id serial primary key,
  Dispatching_base_num varchar,
  pickup_datetime timestamp without time zone,
  affiliated_base_num varchar,
  location_id integer
) ;

DROP TABLE IF EXISTS uber_zone_lookups;
CREATE TABLE uber_zone_lookups (
  id serial primary key,
  location_id integer,
  borough varchar,
  zone varchar,
  ntacode varchar
) ;

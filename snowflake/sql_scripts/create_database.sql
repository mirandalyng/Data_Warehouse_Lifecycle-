SHOW DATABASES; 

-- REMEBER TO MAKE IT IDEMPOTENT
CREATE DATABASE IF NOT EXISTS DEMO_DB; 

CREATE SCHEMA IF NOT EXISTS DEMO_DB.staging; 

CREATE TABLE IF NOT EXISTS customer (
    customer_id integer primary key, 
    age integer,
    email varchar(50)
); 

INSERT INTO customer (customer_id, age, email)
VALUES 
(1,32, 'abc@gmail.com'),
(2,23, 'xyz@gmail.com');

drop database demo_db; 

show databases; 


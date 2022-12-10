--CREATE DATABASE  IF NOT EXISTS `dba_test` ;
--USE `dba_test`;
-- POSTGRES

DROP TABLE IF EXISTS student_input;

CREATE TABLE student_input (
  id SERIAL PRIMARY KEY,
  first_column_lat varchar(255) DEFAULT NULL,
  second_column_lat varchar(255) DEFAULT NULL,
  gender varchar(255) DEFAULT NULL,
  correct_resp_code varchar(10) DEFAULT NULL
);


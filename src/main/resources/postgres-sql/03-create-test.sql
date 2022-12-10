--CREATE DATABASE  IF NOT EXISTS `dba_test` ;
--USE `dba_test`;
-- POSTGRES

DROP TABLE IF EXISTS test;

CREATE TABLE test (
  id SERIAL PRIMARY KEY,
  name varchar(45) DEFAULT NULL,
  date date DEFAULT NULL,
  start_index int DEFAULT NULL,
  end_index int DEFAULT NULL,
  number_words int DEFAULT NULL
);


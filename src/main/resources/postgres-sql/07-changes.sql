--CREATE DATABASE  IF NOT EXISTS `dba_test` /*!40100 DEFAULT CHARACTER SET latin1 */;
--USE `dba_test`;
-- POSTGRES

ALTER TABLE  public.word ALTER COLUMN gender TYPE varchar(255);
ALTER TABLE public.student_input ALTER COLUMN gender TYPE varchar(2SS);

ALTER TABLE public.word ADD COLUMN correct_resp_code VARCHAR(10);
ALTER TABLE public.student_input ADD COLUMN correct_resp_code VARCHAR(10);

UPDATE public.word set correct_resp_code='A'; commit;

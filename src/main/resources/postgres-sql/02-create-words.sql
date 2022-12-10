--CREATE DATABASE  IF NOT EXISTS `dba_test` /*!40100 DEFAULT CHARACTER SET latin1 */;
--USE `dba_test`;
-- POSTGRES 

CREATE TABLE word (
  id SERIAL PRIMARY KEY ,
  name_nl varchar(255) DEFAULT NULL,
  first_column_lat varchar(255) DEFAULT NULL,
  second_column_lat varchar(255) DEFAULT NULL,
  gender varchar(255) DEFAULT NULL,
  correct_resp_code varchar(10) DEFAULT NULL,
  type varchar(45) DEFAULT NULL,
  image_path varchar(45) DEFAULT NULL
);

--
-- Dumping data for table `word`
--


--/*insert per bunch of 10 words 1/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, correct_resp_code, type, image_path)
    VALUES
        ('Which environment variable must be set on Linux before running the OUI for an interactive installation?', 'DISPLAY','ORACLE_HOME','ORACLE_SID', 'A', 'noun', '/images/intranet-logo.png'),
        ('If the OUI detects that a prerequisite has not been met, what can you do?', 'You must cancel installation, fix the problem and launch OUI again','A silent install will fail, an interactive install will continue','Instruct OUI to continue at your own risk','C', 'noun', '/images/intranet-logo.png'),
        ('To create a database, in what mode must the instance be?', 'Not started','Started in NOMOUNT mode','Started in MOUNT mode', 'B','noun', '/images/intranet-logo.png'),
        ('What instance parameter cannot be changed after database creation?', 'All instance parameters can be changed after database creation if it is done in the MOUNT mode','CONTROL_FILES','DB_BLOCK_SIZE', 'C','noun', '/images/intranet-logo.png'),
        ('What does ASM stripe?', 'Files across all disk groups','Disks across all disk groups','Files across all disks in a group', 'C','noun', '/images/intranet-logo.png'),
        ('If a table is created without specifying a schema, in which schema will it be?', 'It will be in the SYS schem','It will be in the schema of the user creating it','It will be in the public schema','B', 'noun', '/images/intranet-logo.png'),
        ('Which of these statements will fail?', 'Create table "SELECT" (col1 date);','Create table 3number (col1 date);','Create table number3 (col1 date);', 'B','noun', '/images/intranet-logo.png'),
        ('Which of the following is not supported by Oracle as an internal data type?', 'INTEGER','FLOAT','STRING', 'C','noun', '/images/intranet-logo.png'),
        ('Create table t1 as select * from regions where 1=2;', 'No table will be created because the condition returns FALSE','The empty table T1 will be created','There will be an error because of the impossible condition','B', 'noun', '/images/intranet-logo.png'),
        ('Where does the data in a temporary table get written to disk?', 'It is never written to disk','To the users temporary tablespace','To a disk local to the session user process','B', 'noun', '/images/intranet-logo.png'); 
	commit;
--/*insert per bunch of 10 words 2/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, type, image_path)
    VALUES
	('muur', 'murus','muri','m', 'noun', '/images/intranet-logo.png'),
	('oog', 'oculus','oculi','m', 'noun', '/images/intranet-logo.png'),
	('volk', 'populus','populi','m', 'noun', '/images/intranet-logo.png'),
	('slaaf', 'servus','servi','m', 'noun', '/images/intranet-logo.png'),
	('poort', 'porta','portae','v', 'noun', '/images/intranet-logo.png'),
	('gevecht', 'pugna','pugnae','v', 'noun', '/images/intranet-logo.png'),
	('aarde', 'terra','terrae','v', 'noun', '/images/intranet-logo.png'),
	('land', 'terra','terrae','v', 'noun', '/images/intranet-logo.png'),
	('leven', 'vita','vitae','v', 'noun', '/images/intranet-logo.png'),
	('gebouw', 'aedificium','aedificii','o', 'noun', '/images/intranet-logo.png');
        commit;
--/*insert per bunch of 10 words 3/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, type, image_path)
VALUES
	('voorbeeld', 'exemplum','exempli','o', 'noun', null),
	('forum (Romeins marktplein)', 'forum','fori','o', 'noun', null),
	('wonder', 'monstrum','monstri','o', 'noun', null),
	('monster', 'monstrum','monstri','o', 'noun', null),
	('tempel', 'templum','templi','o', 'noun', null),
	('wijn', 'vinum','vini','o', 'noun', null),
	('goed', 'bonus','-a, -um','o', 'noun', null),
	('Grieks', 'Graecus','-a, -um','o', 'noun', null),
	('woedend', 'iratus','-a, -um','o', 'noun', null),
	('lang', 'longus','-a, -um','o', 'noun', null);
        commit;
--/*insert per bunch of 10 words 4/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, type, image_path)
VALUES
    ('prachtig', 'magnificus','-a, -um','o', 'noun', null),
	('groot', 'magnus','-a, -um','o', 'noun', null),
	('belangrijk', 'magnus','-a, -um','o', 'noun', null),
	('slecht', 'malus','-a, -um','o', 'noun', null),
	('nieuw', 'novus','-a, -um','o', 'noun', null),
	('beste', 'optimus','-a, -um','o', 'noun', null),
	('zeer goed', 'optimus','-a, -um','o', 'noun', null),
	('Romeins', 'Romanus','-a, -um','o', 'noun', null),
	('leider', 'dux','ducis','m', 'noun', null),
	('moeder', 'mater','matris','v', 'noun', null);
        commit;
--/*insert per bunch of 10 words 5/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, type, image_path)
VALUES
     ('lichaam', 'corpus','corporis','o', 'noun', null),
     ('liefde', 'amor','amoris','m', 'noun', null),
     ('tand', 'dens','dentis','m', 'noun', null),
     ('mens', 'homo','hominis','m', 'noun', null),
     ('soldaat', 'miles','militis','m', 'noun', null),
     ('zon', 'sol','solis','m', 'noun', null),
     ('boom', 'arbor','arboris','v', 'noun', null),
     ('licht', 'lux','lucis','v', 'noun', null),
     ('dood', 'mors','mortis','v', 'noun', null),
     ('nacht', 'nox','noctis','v', 'noun', null);
     commit;


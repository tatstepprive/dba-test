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
        ('Which environment variable must be set on Linux before running the OUI for an interactive installation?',
               'DISPLAY',
               'ORACLE_HOME',
               'ORACLE_SID',
               'A', 'noun', '/images/intranet-logo.png'),
        ('If the OUI detects that a prerequisite has not been met, what can you do?',
               'You must cancel installation, fix the problem and launch OUI again',
               'A silent install will fail, an interactive install will continue',
               'Instruct OUI to continue at your own risk',
               'C', 'noun', '/images/intranet-logo.png'),
        ('To create a database, in what mode must the instance be?',
               'Not started',
               'Started in NOMOUNT mode',
               'Started in MOUNT mode',
               'B','noun', '/images/intranet-logo.png'),
        ('What instance parameter cannot be changed after database creation?',
               'All instance parameters can be changed after database creation if it is done in the MOUNT mode',
               'CONTROL_FILES',
               'DB_BLOCK_SIZE',
               'C','noun', '/images/intranet-logo.png'),
        ('What does ASM stripe?',
               'Files across all disk groups',
               'Disks across all disk groups',
               'Files across all disks in a group',
                'C','noun', '/images/intranet-logo.png'),
        ('If a table is created without specifying a schema, in which schema will it be?',
               'It will be in the SYS schem',
               'It will be in the schema of the user creating it',
               'It will be in the public schema',
               'B', 'noun', '/images/intranet-logo.png'),
        ('Which of these statements will fail?', 
               'Create table "SELECT" (col1 date);',
                'Create table 3number (col1 date);',
                'Create table number3 (col1 date);', 
                'B','noun', '/images/intranet-logo.png'),
        ('Which of the following is not supported by Oracle as an internal data type?', 
                'INTEGER',
                'FLOAT',
                'STRING',
                'C','noun', '/images/intranet-logo.png'),
        ('Create table t1 as select * from regions where 1=2;', 
                'No table will be created because the condition returns FALSE',
                'The empty table T1 will be created',
                'There will be an error because of the impossible condition',
                'B', 'noun', '/images/intranet-logo.png'),
        ('Where does the data in a temporary table get written to disk?', 
                'It is never written to disk',
                'To the users temporary tablespace',
                'To a disk local to the session user process',
                'B', 'noun', '/images/intranet-logo.png'); 
	commit;
--/*insert per bunch of 10 words 2/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, correct_resp_code, type, image_path)
    VALUES
	('create synonym s1 for employees;<br />
create public synonym s1 for departments;<br />
select * from s1;<br />', 
                'The second statement will fail because an object s1 already exists',
                'The third statement will show the contents of employees',
                'The third statement will show the contents of departments',
                'B', 'noun', '/images/intranet-logo.png'),
	('create view dept_v as select * from dept;<br />
create synonym dept_s for dept_v;<br />
drop table dept;<br />
select * from dept_s;<br />',
                'There will be an error because the synonym will be invalid',
                'There will be an error because the view will be invalid',
                'There will be an error because the view will have been dropped implicitly when the table was dropped',
                'B', 'noun', '/images/intranet-logo.png'),
	('create sequence seq1 start with 1 maxvalue 50;<br />
If the current value is already 50 and you attempt to select SEQ1.NEXTVAL what will happen?',
                'The sequence will cycle and issue 1',
                'The sequence will reissue 50',
                'There will be an error',
                'C', 'noun', '/images/intranet-logo.png'),
	('create sequence seq1 start with 1;<br />
After selecting from it a few times, you want to reinitialize it to reusse the number already generated',
                'You must drop and re-create the sequence',
                'Reset the next value to 1: ALTER SEQUENCE SEQ1 START WITH 1;',
                'Reset the sequence to its starting value: ALTER SEQUENCE SEQ1 CYCLE;',
                'A', 'noun', '/images/intranet-logo.png'),
	('If un UPDATE or DELETE command has a WHERE clause that gives it a scope of several rows and there is an error partway through execution?<br />
The command is one of several in a multistatement transaction',
                'The command will stop at the error and the already updated/deleded rows will remain updated/deleted',
                'The whole transaction will be rolled back',
                'Whatever work the command had done before hitting the error will be rolled back, but work done alredy by the transaction will remain',
                'C', 'noun', '/images/intranet-logo.png'),
	('Why will it fail: insert into t1 (c1, c2) values (select c1, c2 from t1);',
                'Because values are not provided for all the tables columns',
                'Because the subquery returns multiple rows and it requires a to restrict the number of rows returned by using WHERE or other',
                'Because the VALUES keyword is not used with a subquery',
                'C', 'noun', '/images/intranet-logo.png'),
	('Which of these commands will remove every row in a table?',
                'DELETE command with no WHERE clause',
                'DROP TABLE command',
                'UPDATE command by setting every column to NULL',
                'A', 'noun', '/images/intranet-logo.png'),
	('When a COMMIT is issued, what will happen?',
                'The undo data is deleted so that the changes can no longer be rolled back',
                'DBWn writes the change blocks to disk',
                'LGWR writes the log buffer to disk',
                'C', 'noun', '/images/intranet-logo.png'),
	('What types of segments are protected by redo?',
               'Index, Table, Temporary, Undo segments',
               'Index, Table, Undo segments',
               'Index, Table', 
               'B','noun', '/images/intranet-logo.png'),
	('If one user updates a row without specifying any locking, what will be the effect on other sessions?',
               'Others will be able to read and write other rows but no the affected rows',
               'Others will be able to read the affected rows but not write to them',
               'Others will be able to read and write the affected rows, but a COMMIT will hang until the first session has been committed or rolled back',
               'B', 'noun', '/images/intranet-logo.png');
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


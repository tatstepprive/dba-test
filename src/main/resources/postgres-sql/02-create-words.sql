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
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, correct_resp_code, type, image_path)
VALUES
	('Which of these commands will prevent other sessions from reading rows in the table?',
               'LOCK TABLE SAM.T1 IN EXLUSIVE MODE;',
               'LOCK TABLE SAM.T1 in ROW EXCLUSIVE MODE;',
               'Oracle does not provide a lock that will prevent others from reading a table',
               'C', 'noun', null),
	('If several sessions request an exlusive lock on the same row, what will happen?',
               'The first session will get an exclusive lock and the other sessions will get shared locks',
               'The first session will get an exclusive lock, after it releases the lock the next session in sequence will get it',
               'Oracle will detect the conflict and release the lock',
               'B', 'noun', null),
	('If a programmer does not request a type of lock when updating many rows in one table, what lock/locks will they be given?',
               'An exlusive lock the the table. This is the fastest method when many rows are being updated',
               'Shared locks on the table and on each row. This is the safest although not the fastest method',
               'An exclusive lock on each row an a shared lock on the table. This maximizes concurrency safely',
               'C', 'noun', null),
	('What happens if two sessions deadlock against each other?',
               'Oracle will automatically roll back one sessions statement',
               'Oracle will automatically terminate one session',
               'Both sessions will hang indefinitely',
               'A', 'noun', null),
	('When a DML statement executes, what happens?',
               'Both the data and the undo blocks on disk are updated, and the changes are written out to the redo stream',
               'Both data and undo blocks are updated in the database buffer cache, and the updates also go the log buffer',
               'The redo log buffer is updated with information needed to redo the transaction and the undo blocks are updated with inforamtion needed to reverse the transaction.',
               'B', 'noun', null),
	('If you suspect that undo generation is a performance issue, what can you do to reduce the amount of undo data generated?',
               'There is nothing you can do because all DML statements must generate undo',
               'Reduce the size of the undo segments',
               'Convert from use of rollback segments to automatic undo management',
               'A', 'noun', null),
	('If an undo segment fills up, what will happen?',
               'Another undo segment will be created automatically',
               'The undo segment will increase in size',
               'Transactions will continue in a different undo segment',
               'B', 'noun', null),
	('Your undo tablespace has 10 undo segments, but during a sudden burst of activity you have 20 concurrent transactions. What will happen?',
               'Oracle will create another 10 undo segments',
               'What happens will depend on your UNDO_RETENTION setting',
               'The transactions will be automatically balanced across the 10 undo segments',
               'A', 'noun', null),
	('Your users are reporting ORA-1555: Snapshot too old errors. What might be the cause of this?',
               'Your undo tablespace is retaining data for too long',
               'The undo data is too old',
                'There is not enough undo data',
                'C', 'noun', null),
	('After describing the T1 table, you discover that the COL1 column has the data type of NUMBER(8,2). Which values will not be permitted in this column?',
                '123456.78',
                '123456',
                '1234567.8',
                'C', 'noun', null);
        commit;
--/*insert per bunch of 10 words 4/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, correct_resp_code, type, image_path)
VALUES
        ('There are START_DATE and END_DATE columns with the data type of DATE in the T1 table. What happens when you try the expression END_DATE - START_DATE?',
                'Value of VARCHAR2 data type is returned',
                'Value of type NUMBER is returned',
                'The expression is invalid since the arithmetic cannot be performed on columns with DATE types',
                'B','noun', null),
	('Which statement reports on unique JOB_ID values from the EMPLOYEES table?',
                'SELECT UNIQUE JOB_ID from EMPLOYEES;',
                'SELECT DISTINCT JOB_ID, IMPLOYEE_ID FROM EMPLOYEES;',
                'SELECT DISTINCT JOB_ID FROM IMPLOYEES',
                'C', 'noun', null),
	('When using a row limiting clause in the following query, what employee information is returned:<br />
SELECT employee_id, first_name<br />
FROM  employees<br />
ORDER by employee_id<br />
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;',
                'The 5 employees with the highest employee_id',
                'The 5 employees with the lowest employee_id',
                'None of the above',
                'C', 'noun', null),
	('What value is returned after executing the following statement: SELECT MOD(14,3) FROM DUAL;',
                '2',
                '4',
                '42',
                'A', 'noun', null),
	('What value is returned after executing the following statement if sysdate=30-DEC-2022:<br />
select trunc(sysdate, ''YEAR'');',
                '31-DEC-2022',
                '01-JAN-2023',
                '01-JAN-2022',
                'C', 'noun', null),
	('What value is returned after executing the following statement if sysdate=12-JUL-2022:<br />
select to_char(sysdate, ''fmDDth MONTH'') from dual;',
                '12TH JULY',
                '12th July',
                'TWELFTH JULY',
                'A', 'noun', null),
	('What value is returned after executing the following statement:<br />
select NVL2(NULLIF(''CODA'', ''SID''), ''DOG'', ''CAT'') from dual;',
                'DOG',
                'CAT',
                'NULL',
                'A', 'noun', null),
	('What result is returning by the following statement:<br />
select COUNT(*) from dual;',
                '2',
                '0',
                '1',
                'C', 'noun', null),
	('The table EMPLOYEES contains 10 employees with 9 having SALARY=100 and one having NULL in SALARY column. What value is returned by executing:<br />
SELECT SUM(SALARY) FROM EMPLOYEES;',
                '900',
                '1000',
                'NULL',
                'A','noun', null),
	('Which comparisation operator cannot be used with multiple-row subqueries?',
                'ALL',
                'ANY',
                'all the above can be used',
                'C', 'noun', null);
        commit;
--/*insert per bunch of 10 words 5/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, correct_resp_code, type, image_path)
VALUES
     ('How do the sessions communicate with the database?',
                 'Server processes use Oracle Net to connect to the instance',
                 'Background process use Oracle Net to connect to the database',
                 'Server processes execute SQL received from user processes',
                 'C', 'noun', null),
     ('When a session changes data, where does the change get written?',
                 'It gets written to the data block in the cache and the redo log buffer',
                 'It gets written to the data block on disk an the current online redo log file',
                 'The session writes to the database buffer cache, and the log writer writes to the current online redo log file',
                 'A', 'noun', null),
     ('Which of these Background processes is optional?',
                 'ARCn, archive process',
                 'CKPT, the checkpoint process',
                 'MMON, the manageability monitor',
                 'A', 'noun', null),
     ('What happens when a user issues a COMMIT?',
                 'The CKPT process signals a checkpoint',
                 'The DBWn process writes the transaction changed buffers to the datafiles',
                 'The LGWR flushes the log buffer to the online redo log',
                 'C', 'noun', null),
     ('One segment can be spread across many datafiles. How?',
                 'By assigning multiple datafile to a tablespace',
                 'By spreading the segment across the multiple tablespaces',
                 'By allocating exists with blocks in multiple datafiles',
                 'A', 'noun', null),
     ('The LOG_BUFFER parameter si a static parameter. How can you change it?',
                 'You can not change it because it is static',
                 'You can change it within the instance, but it wil return to the static value at the next startup',
                 'You can change it in the parameter file, but the new value will come into effect only at the next startup',
                 'C', 'noun', null),
     ('You issue the command SHUTDOWN and it seems to hang. What could be the reason?',
                 'There are active transactionsin the database, when they complete, the shutdown will proceed',
                 'There are other sessions logged on',
                 'You have not connected with operating system or password file authentication',
                 'B', 'noun', null),
     ('Which of these views can be queried successfully in NOMOUNT mode?',
                 'V$DATABASE',
                 'V$SESSION',
                 'none of above',
                 'B', 'noun', null),
     ('Which view will list all tables in the database?',
                 'ALL_TABLES',
                 'DBA_TABLES',
                 'USER_TABLES',
                 'B', 'noun', null),
     ('Which of these commands can be executed against a table in a read-only tablespace?',
                 'DROP',
                 'TRUNCATE',
                 'nono of above',
                 'A', 'noun', null);
     commit;
/*INSERT QUESTION TEMPLATE
--/*insert per bunch of 10 words 5/10*/
INSERT INTO word (name_nl, first_column_lat, second_column_lat, gender, correct_resp_code, type, image_path)
VALUES
     ('q51',
                 'corpus',
                 'corporis',
                 'o',
                 'N', 'noun', null),
     ('q52',
                 'amor',
                 'amoris',
                 'm',
                 'N', 'noun', null),
     ('q53',
                 'dens',
                 'dentis',
                 'm',
                 'N', 'noun', null),
     ('q54',
                 'homo',
                 'hominis',
                 'm',
                 'N', 'noun', null),
     ('q55',
                 'miles',
                 'militis',
                 'm',
                 'N', 'noun', null),
     ('q56',
                 'sol',
                 'solis',
                 'm',
                 'N', 'noun', null),
     ('q57',
                 'arbor',
                 'arboris',
                 'v',
                 'N', 'noun', null),
     ('q58',
                 'lux',
                 'lucis',
                 'v',
                 'N', 'noun', null),
     ('q59',
                 'mors',
                 'mortis',
                 'v',
                 'N', 'noun', null),
     ('q60',
                 'nox',
                 'noctis',
                 'v',
                 'N', 'noun', null);
     commit;
*/

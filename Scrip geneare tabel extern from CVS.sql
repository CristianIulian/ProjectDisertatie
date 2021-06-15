

CREATE OR REPLACE DIRECTORY TRIALS AS 'C:\app\Cristian\virtual\admin\CristianDB\External_Tables_For_Trials';
--drop table Formular_Grav_Simptome;
CREATE TABLE Formular_Grav_Simptome 
( PACIENT_ID        NUMBER(5),
  DATA_FORMULAR     DATE ,
  VIZITA_NUMAR      NUMBER(3),
  Chestionar_1      NUMBER(3),
  Chestionar_2      NUMBER(3),
  Chestionar_3      NUMBER(3),
  Chestionar_4      NUMBER(3),
  Chestionar_5      NUMBER(3),
  Chestionar_6      NUMBER(3),
  Chestionar_7      NUMBER(4, 1),
  Chestionar_8      NUMBER(4, 1),
  Chestionar_9      NUMBER(4, 1),
  Chestionar_10     NUMBER(4, 1),
  Chestionar_11     NUMBER(5, 1),
  Chestionar_12     NUMBER(5, 1))
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY TRIALS
     ACCESS PARAMETERS 
       (RECORDS DELIMITED BY NEWLINE  
           NOBADFILE
           NODISCARDFILE
           NOLOGFILE
           FIELDS TERMINATED BY ','
           MISSING FIELD VALUES ARE NULL
           ( PACIENT_ID CHAR(10),
             DATA_FORMULAR CHAR(10) date_format DATE mask "DD-MM-YYYY",
             VIZITA_NUMAR CHAR(10),
             Chestionar_1 CHAR(10),
             Chestionar_2 CHAR(10),
             Chestionar_3 CHAR(10),
             Chestionar_4 CHAR(10),
             Chestionar_5 CHAR(10),
             Chestionar_6 CHAR(10),
             Chestionar_7 CHAR(10),
             Chestionar_8 CHAR(10),
             Chestionar_9 CHAR(10),
             Chestionar_10 CHAR(10),
             Chestionar_11 CHAR(10),
             Chestionar_12 CHAR(10)
           )
       )
     LOCATION ('Formular_Gravitate.csv')
  )
  REJECT LIMIT UNLIMITED;
  select * from Formular_Grav_Simptome;


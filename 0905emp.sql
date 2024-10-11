SQL> clear screen  ;

SQL>    drop table sosi  ;
   drop table sosi  
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL>    create table sosi (
  2        code   number(4) primary key ,
  3        name   varchar2(10) not null ,
  4        title  varchar2(16) not null ,
  5        birth  date
  6     );

Table created.

SQL> 
SQL> 
SQL>    desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE

SQL>    commit ;

Commit complete.

SQL> 
SQL> insert into sosi values(2200,'kim', 'blue', sysdate);

1 row created.

SQL> insert into sosi values(5500,'lee', 'five', sysdate);

1 row created.

SQL> insert into sosi values(9900,'goo', 'gugu', sysdate);

1 row created.

SQL> insert into sosi values(8800,'aaa', 'red', sysdate);

1 row created.

SQL> insert into sosi values(7700,'xyz', 'zoom', sysdate);

1 row created.

SQL> insert into sosi values(3300,'note', 'book', sysdate);

1 row created.

SQL> select * from sosi ;

 CODE NAME       TITLE      BIRTH                                               
----- ---------- ---------- --------                                            
 2200 kim        blue       24/09/05                                            
 5500 lee        five       24/09/05                                            
 9900 goo        gugu       24/09/05                                            
 8800 aaa        red        24/09/05                                            
 7700 xyz        zoom       24/09/05                                            
 3300 note       book       24/09/05                                            

6 rows selected.

SQL> commit ;

Commit complete.

SQL> drop table  sosicopy ;

Table dropped.

SQL>   create table  sosicopy
  2     as
  3    select * from sosi ;

Table created.

SQL> 
SQL>   commit ;

Commit complete.

SQL>   desc  sosicopy ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                               NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE

SQL>   select * from  sosicopy ;

 CODE NAME       TITLE      BIRTH                                               
----- ---------- ---------- --------                                            
 2200 kim        blue       24/09/05                                            
 5500 lee        five       24/09/05                                            
 9900 goo        gugu       24/09/05                                            
 8800 aaa        red        24/09/05                                            
 7700 xyz        zoom       24/09/05                                            
 3300 note       book       24/09/05                                            

6 rows selected.

SQL> 
SQL> alter table sosi add(sal number(7,2) default 6453.86);

Table altered.

SQL>   desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE
 SAL                                                NUMBER(7,2)

SQL>   select * from  sosi  ;

 CODE NAME       TITLE      BIRTH           SAL                                 
----- ---------- ---------- -------- ----------                                 
 2200 kim        blue       24/09/05    6453.86                                 
 5500 lee        five       24/09/05    6453.86                                 
 9900 goo        gugu       24/09/05    6453.86                                 
 8800 aaa        red        24/09/05    6453.86                                 
 7700 xyz        zoom       24/09/05    6453.86                                 
 3300 note       book       24/09/05    6453.86                                 

6 rows selected.

SQL> alter table sosi add(wdate date default sysdate) ;

Table altered.

SQL>   desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE

SQL>   select * from  sosi  ;

 CODE NAME       TITLE      BIRTH           SAL WDATE                           
----- ---------- ---------- -------- ---------- --------                        
 2200 kim        blue       24/09/05    6453.86 24/09/05                        
 5500 lee        five       24/09/05    6453.86 24/09/05                        
 9900 goo        gugu       24/09/05    6453.86 24/09/05                        
 8800 aaa        red        24/09/05    6453.86 24/09/05                        
 7700 xyz        zoom       24/09/05    6453.86 24/09/05                        
 3300 note       book       24/09/05    6453.86 24/09/05                        

6 rows selected.

SQL> alter table sosi modify(title varchar2(8)) ;

Table altered.

SQL>   desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(8)
 BIRTH                                              DATE
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE

SQL>   select * from  sosi  ;

 CODE NAME       TITLE      BIRTH           SAL WDATE                           
----- ---------- ---------- -------- ---------- --------                        
 2200 kim        blue       24/09/05    6453.86 24/09/05                        
 5500 lee        five       24/09/05    6453.86 24/09/05                        
 9900 goo        gugu       24/09/05    6453.86 24/09/05                        
 8800 aaa        red        24/09/05    6453.86 24/09/05                        
 7700 xyz        zoom       24/09/05    6453.86 24/09/05                        
 3300 note       book       24/09/05    6453.86 24/09/05                        

6 rows selected.

SQL> alter table sosi rename column name to nick ;

Table altered.

SQL>    desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NICK                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(8)
 BIRTH                                              DATE
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE

SQL>    select * from  sosi  ;

 CODE NICK                 TITLE      BIRTH           SAL WDATE                 
----- -------------------- ---------- -------- ---------- --------              
 2200 kim                  blue       24/09/05    6453.86 24/09/05              
 5500 lee                  five       24/09/05    6453.86 24/09/05              
 9900 goo                  gugu       24/09/05    6453.86 24/09/05              
 8800 aaa                  red        24/09/05    6453.86 24/09/05              
 7700 xyz                  zoom       24/09/05    6453.86 24/09/05              
 3300 note                 book       24/09/05    6453.86 24/09/05              

6 rows selected.

SQL> alter table sosi drop column birth ;

Table altered.

SQL>   desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NICK                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(8)
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE

SQL>   select * from  sosi  ;

 CODE NICK                 TITLE             SAL WDATE                          
----- -------------------- ---------- ---------- --------                       
 2200 kim                  blue          6453.86 24/09/05                       
 5500 lee                  five          6453.86 24/09/05                       
 9900 goo                  gugu          6453.86 24/09/05                       
 8800 aaa                  red           6453.86 24/09/05                       
 7700 xyz                  zoom          6453.86 24/09/05                       
 3300 note                 book          6453.86 24/09/05                       

6 rows selected.

SQL> 
SQL>  alter table sosi add(grade char(1) default 'F' ) ;

Table altered.

SQL>   desc sosi ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NICK                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(8)
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE
 GRADE                                              CHAR(1)

SQL>   select * from  sosi  ;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue          6453.86 24/09/05 F                     
 5500 lee                  five          6453.86 24/09/05 F                     
 9900 goo                  gugu          6453.86 24/09/05 F                     
 8800 aaa                  red           6453.86 24/09/05 F                     
 7700 xyz                  zoom          6453.86 24/09/05 F                     
 3300 note                 book          6453.86 24/09/05 F                     

6 rows selected.

SQL> insert into sosi values(2278,'bc','card',34.69,sysdate,'A');

1 row created.

SQL> insert into sosi values(2279,'lg','gram',90.26,sysdate,'C');

1 row created.

SQL> insert into sosi values(3378,'tea','cake',12.76,sysdate,'D');

1 row created.

SQL> insert into sosi values(5576,'my','you',54.96,sysdate,'B');

1 row created.

SQL> update sosi set sal = 96.12 where code = 3300 ;

1 row updated.

SQL>  drop table  sosiLast ;

Table dropped.

SQL>   create table  sosiLast
  2     as
  3    select * from sosi ;

Table created.

SQL> 
SQL>   commit ;

Commit complete.

SQL>   desc  sosiLast ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                               NUMBER(4)
 NICK                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(8)
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE
 GRADE                                              CHAR(1)

SQL>   select * from  sosiLast ;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue          6453.86 24/09/05 F                     
 5500 lee                  five          6453.86 24/09/05 F                     
 9900 goo                  gugu          6453.86 24/09/05 F                     
 8800 aaa                  red           6453.86 24/09/05 F                     
 7700 xyz                  zoom          6453.86 24/09/05 F                     
 3300 note                 book            96.12 24/09/05 F                     
 2278 bc                   card            34.69 24/09/05 A                     
 2279 lg                   gram            90.26 24/09/05 C                     
 3378 tea                  cake            12.76 24/09/05 D                     
 5576 my                   you             54.96 24/09/05 B                     

10 rows selected.

SQL> 
SQL> 
SQL>   drop table  sosiTemp ;

Table dropped.

SQL>   create table  sosiTemp
  2     as
  3    select * from sosi ;

Table created.

SQL> 
SQL>   commit ;

Commit complete.

SQL>   desc  sosiTemp ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                               NUMBER(4)
 NICK                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(8)
 SAL                                                NUMBER(7,2)
 WDATE                                              DATE
 GRADE                                              CHAR(1)

SQL>   select * from  sosiTemp ;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue          6453.86 24/09/05 F                     
 5500 lee                  five          6453.86 24/09/05 F                     
 9900 goo                  gugu          6453.86 24/09/05 F                     
 8800 aaa                  red           6453.86 24/09/05 F                     
 7700 xyz                  zoom          6453.86 24/09/05 F                     
 3300 note                 book            96.12 24/09/05 F                     
 2278 bc                   card            34.69 24/09/05 A                     
 2279 lg                   gram            90.26 24/09/05 C                     
 3378 tea                  cake            12.76 24/09/05 D                     
 5576 my                   you             54.96 24/09/05 B                     

10 rows selected.

SQL> select code, nick, grade ,
  2      decode(grade,'A', 10,'B', 5, 'C', 3,'D',2,0) "점수"
  3      from sosi  order by grade;

 CODE NICK                 GR       점수                                        
----- -------------------- -- ----------                                        
 2278 bc                   A          10                                        
 5576 my                   B           5                                        
 2279 lg                   C           3                                        
 3378 tea                  D           2                                        
 3300 note                 F           0                                        
 8800 aaa                  F           0                                        
 9900 goo                  F           0                                        
 5500 lee                  F           0                                        
 2200 kim                  F           0                                        
 7700 xyz                  F           0                                        

10 rows selected.

SQL> select code, nick, grade ,
  2       case
  3          when grade = 'A'  then  '최고'
  4          when grade = 'B'  then  '합격'
  5          when grade = 'C'  then  '보통'
  6          when grade = 'D'  then  '노력'
  7          when grade = 'F'  then  '재수강'
  8        end "결과"
  9     from sosi order by grade;

 CODE NICK                 GR 결과                                              
----- -------------------- -- ------------------                                
 2278 bc                   A  최고                                              
 5576 my                   B  합격                                              
 2279 lg                   C  보통                                              
 3378 tea                  D  노력                                              
 3300 note                 F  재수강                                            
 8800 aaa                  F  재수강                                            
 9900 goo                  F  재수강                                            
 5500 lee                  F  재수강                                            
 2200 kim                  F  재수강                                            
 7700 xyz                  F  재수강                                            

10 rows selected.

SQL> insert into sosi values(6629,'mc','coffee', 290.26,sysdate,'C');

1 row created.

SQL> insert into sosi values(6638,'star','milk', 412.76,sysdate,'D');

1 row created.

SQL> insert into sosi values(6646,'park','snow', 354.96,sysdate,'B');

1 row created.

SQL> update sosi set sal = 120.65 where code = 2200 ;

1 row updated.

SQL> update sosi set sal = 96.12 where code = 3300 ;

1 row updated.

SQL> update sosi set sal = 45.72 where code = 8800 ;

1 row updated.

SQL> update sosi set sal = 39.61 where code = 9900 ;

1 row updated.

SQL> update sosi set grade='A' where code = 3300 ;

1 row updated.

SQL> update sosi set grade='B' where code = 5500 ;

1 row updated.

SQL> update sosi set grade='C' where code = 7700 ;

1 row updated.

SQL> select * from sositemp;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue          6453.86 24/09/05 F                     
 5500 lee                  five          6453.86 24/09/05 F                     
 9900 goo                  gugu          6453.86 24/09/05 F                     
 8800 aaa                  red           6453.86 24/09/05 F                     
 7700 xyz                  zoom          6453.86 24/09/05 F                     
 3300 note                 book            96.12 24/09/05 F                     
 2278 bc                   card            34.69 24/09/05 A                     
 2279 lg                   gram            90.26 24/09/05 C                     
 3378 tea                  cake            12.76 24/09/05 D                     
 5576 my                   you             54.96 24/09/05 B                     

10 rows selected.

SQL> select * from sosi;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue           120.65 24/09/05 F                     
 5500 lee                  five          6453.86 24/09/05 B                     
 9900 goo                  gugu            39.61 24/09/05 F                     
 8800 aaa                  red             45.72 24/09/05 F                     
 7700 xyz                  zoom          6453.86 24/09/05 C                     
 3300 note                 book            96.12 24/09/05 A                     
 2278 bc                   card            34.69 24/09/05 A                     
 2279 lg                   gram            90.26 24/09/05 C                     
 3378 tea                  cake            12.76 24/09/05 D                     
 5576 my                   you             54.96 24/09/05 B                     
 6629 mc                   coffee         290.26 24/09/05 C                     

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 6638 star                 milk           412.76 24/09/05 D                     
 6646 park                 snow           354.96 24/09/05 B                     

13 rows selected.

SQL> drop table sositemp;

Table dropped.

SQL> create table sositemp
  2  as
  3  select * from sosi;

Table created.

SQL> delete from sosi temp where grade = 'C';

3 rows deleted.

SQL> delete from sositemp where grade = 'B';

3 rows deleted.

SQL> select * from sositemp;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue           120.65 24/09/05 F                     
 9900 goo                  gugu            39.61 24/09/05 F                     
 8800 aaa                  red             45.72 24/09/05 F                     
 7700 xyz                  zoom          6453.86 24/09/05 C                     
 3300 note                 book            96.12 24/09/05 A                     
 2278 bc                   card            34.69 24/09/05 A                     
 2279 lg                   gram            90.26 24/09/05 C                     
 3378 tea                  cake            12.76 24/09/05 D                     
 6629 mc                   coffee         290.26 24/09/05 C                     
 6638 star                 milk           412.76 24/09/05 D                     

10 rows selected.

SQL> delete from sositemp where grade = 'C';

3 rows deleted.

SQL> select * from sositemp;

 CODE NICK                 TITLE             SAL WDATE    GR                    
----- -------------------- ---------- ---------- -------- --                    
 2200 kim                  blue           120.65 24/09/05 F                     
 9900 goo                  gugu            39.61 24/09/05 F                     
 8800 aaa                  red             45.72 24/09/05 F                     
 3300 note                 book            96.12 24/09/05 A                     
 2278 bc                   card            34.69 24/09/05 A                     
 3378 tea                  cake            12.76 24/09/05 D                     
 6638 star                 milk           412.76 24/09/05 D                     

7 rows selected.

SQL> clear screen;

SQL> select sum(sal) from sosi;

  SUM(SAL)                                                                      
----------                                                                      
   7626.09                                                                      

SQL> select sum(sal) from sosi group by grade;

  SUM(SAL)                                                                      
----------                                                                      
    425.52                                                                      
   6863.78                                                                      
    130.81                                                                      
    205.98                                                                      

SQL> select grade, sum(sal) from sosi group by grade;

GR   SUM(SAL)                                                                   
-- ----------                                                                   
D      425.52                                                                   
B     6863.78                                                                   
A      130.81                                                                   
F      205.98                                                                   

SQL> select grade "급", sum(sal) from sosi group by grade;

급   SUM(SAL)                                                                   
-- ----------                                                                   
D      425.52                                                                   
B     6863.78                                                                   
A      130.81                                                                   
F      205.98                                                                   

SQL> col grade for a7;
SQL> select grade, sum(sal) from sosi group by grade;

GRADE     SUM(SAL)                                                              
------- ----------                                                              
D           425.52                                                              
B          6863.78                                                              
A           130.81                                                              
F           205.98                                                              

SQL> select code, sum(sal) from sosi group by grade;
select code, sum(sal) from sosi group by grade
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> clear screen

SQL> select grade, sum(sal) from sosi group by grade order by grade;

GRADE     SUM(SAL)                                                              
------- ----------                                                              
A           130.81                                                              
B          6863.78                                                              
D           425.52                                                              
F           205.98                                                              

SQL> select sum(sal) from sosi ;

  SUM(SAL)                                                                      
----------                                                                      
   7626.09                                                                      

SQL> select sum(sal) from sosi group by grade where sum(sal) < 500;
select sum(sal) from sosi group by grade where sum(sal) < 500
                                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select grade, sum(sal) from sosi group by grade having sum(sal) < 500;

GRADE     SUM(SAL)                                                              
------- ----------                                                              
D           425.52                                                              
A           130.81                                                              
F           205.98                                                              

SQL> select grade, sum(sal) from sosi group by grade order by 2;

GRADE     SUM(SAL)                                                              
------- ----------                                                              
A           130.81                                                              
F           205.98                                                              
D           425.52                                                              
B          6863.78                                                              

SQL> sleect grade, sum(sal) from sosi group by grade order by sum(sal);
SP2-0734: unknown command beginning "sleect gra..." - rest of line ignored.
SQL> select grade,sum(sal) from sosi group by grade order by sum(sal);

GRADE     SUM(SAL)                                                              
------- ----------                                                              
A           130.81                                                              
F           205.98                                                              
D           425.52                                                              
B          6863.78                                                              

SQL> select grade, avg(sal) from sosi group by grade;

GRADE     AVG(SAL)                                                              
------- ----------                                                              
D           212.76                                                              
B       2287.92667                                                              
A           65.405                                                              
F            68.66                                                              

SQL> select grade,sum(sal) from sosi
  2  group by grade having sum(sal) < 500 order by sum(sal);

GRADE     SUM(SAL)                                                              
------- ----------                                                              
A           130.81                                                              
F           205.98                                                              
D           425.52                                                              

SQL> select grade, sum(sal) from sosi
  2  group by grade having sum(sal) < 500 order by sum(sal) desc;

GRADE     SUM(SAL)                                                              
------- ----------                                                              
D           425.52                                                              
F           205.98                                                              
A           130.81                                                              

SQL> select grade,
  2  count(sal) from sosi group by grade;

GRADE   COUNT(SAL)                                                              
------- ----------                                                              
D                2                                                              
B                3                                                              
A                2                                                              
F                3                                                              

SQL> select grade, count(sal) from sosi
  2  group by grade having count(sal)>=3 order by grade;

GRADE   COUNT(SAL)                                                              
------- ----------                                                              
B                3                                                              
F                3                                                              

SQL> clear screen

SQL> select sequence_name from user_sequences;

SEQUENCE_NAME                                                                   
------------------------------------------------------------                    
LOGMNR_EVOLVE_SEQ$                                                              
LOGMNR_SEQ$                                                                     
LOGMNR_UIDS$                                                                    
MVIEW$_ADVSEQ_GENERIC                                                           
MVIEW$_ADVSEQ_ID                                                                
REPCAT$_EXCEPTIONS_S                                                            
REPCAT$_FLAVORS_S                                                               
REPCAT$_FLAVOR_NAME_S                                                           
REPCAT$_REFRESH_TEMPLATES_S                                                     
REPCAT$_REPPROP_KEY                                                             
REPCAT$_RUNTIME_PARMS_S                                                         

SEQUENCE_NAME                                                                   
------------------------------------------------------------                    
REPCAT$_TEMPLATE_OBJECTS_S                                                      
REPCAT$_TEMPLATE_PARMS_S                                                        
REPCAT$_TEMPLATE_REFGROUPS_S                                                    
REPCAT$_TEMPLATE_SITES_S                                                        
REPCAT$_TEMP_OUTPUT_S                                                           
REPCAT$_USER_AUTHORIZATIONS_S                                                   
REPCAT$_USER_PARM_VALUES_S                                                      
REPCAT_LOG_SEQUENCE                                                             
TEMPLATE$_TARGETS_S                                                             

20 rows selected.

SQL> drop sequence guest_seq;
drop sequence guest_seq
              *
ERROR at line 1:
ORA-02289: sequence does not exist 


SQL> drop sequence bc_seq;
drop sequence bc_seq
              *
ERROR at line 1:
ORA-02289: sequence does not exist 


SQL> create sequence bc_seq;

Sequence created.

SQL> sequence kt_seq increment by 10 start with 0 ;
SP2-0734: unknown command beginning "sequence k..." - rest of line ignored.
SQL> create  sequence kt_seq increment by 10 start with 0 ;
create  sequence kt_seq increment by 10 start with 0 
*
ERROR at line 1:
ORA-04006: START WITH cannot be less than MINVALUE 


SQL> create sequence kt_seq increment by 10 start with 0 ;
create sequence kt_seq increment by 10 start with 0 
*
ERROR at line 1:
ORA-04006: START WITH cannot be less than MINVALUE 


SQL> 

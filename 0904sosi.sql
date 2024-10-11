SQL> select * from sosi;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      2200 kim                  blue                             24/09/04       
      5500 lee                  five                             24/09/04       
      9900 goo                  gugu                             24/09/04       
      8800 aaa                  red                              24/09/04       
      7700 bbb                  seven                            24/09/04       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       

7 rows selected.

SQL> insert into sosi values(1100,
  2  
SQL> 
SQL> insert into sosi values(1100, 'sosi', 'first', sysdate);

1 row created.

SQL> select * from sosi;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      2200 kim                  blue                             24/09/04       
      5500 lee                  five                             24/09/04       
      9900 goo                  gugu                             24/09/04       
      8800 aaa                  red                              24/09/04       
      7700 bbb                  seven                            24/09/04       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      1100 sosi                 first                            24/09/04       

8 rows selected.

SQL> select * from sosi where name = 'lee' or name = 'bbb
  2  
SQL> 
SQL> select * from sosi where name = 'lee' or name= 'bbb' or name = 'one';

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      5500 lee                  five                             24/09/04       
      7700 bbb                  seven                            24/09/04       

SQL> update sosi set name = 'one' where code = 1100;

1 row updated.

SQL> select * from sosi;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      2200 kim                  blue                             24/09/04       
      5500 lee                  five                             24/09/04       
      9900 goo                  gugu                             24/09/04       
      8800 aaa                  red                              24/09/04       
      7700 bbb                  seven                            24/09/04       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      1100 one                  first                            24/09/04       

8 rows selected.

SQL> select * from sosi order by code;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      1100 one                  first                            24/09/04       
      2200 kim                  blue                             24/09/04       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      5500 lee                  five                             24/09/04       
      7700 bbb                  seven                            24/09/04       
      8800 aaa                  red                              24/09/04       
      9900 goo                  gugu                             24/09/04       

8 rows selected.

SQL> select * from sosi where name in ('lee','bbb','one');

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      5500 lee                  five                             24/09/04       
      7700 bbb                  seven                            24/09/04       
      1100 one                  first                            24/09/04       

SQL> select * from sosi order by code where code = 5500;
select * from sosi order by code where code = 5500
                                 *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select * from sosi where name like '%e%' or  code = 7700;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      5500 lee                  five                             24/09/04       
      7700 bbb                  seven                            24/09/04       
      1100 one                  first                            24/09/04       

SQL> select * from sosi where (code >=3300 and code <=7700);

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      5500 lee                  five                             24/09/04       
      7700 bbb                  seven                            24/09/04       

SQL> select * from sosi where code != 5500;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      2200 kim                  blue                             24/09/04       
      9900 goo                  gugu                             24/09/04       
      8800 aaa                  red                              24/09/04       
      7700 bbb                  seven                            24/09/04       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      1100 one                  first                            24/09/04       

7 rows selected.

SQL> select * from sosi where code ^= 5500 order by code;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      1100 one                  first                            24/09/04       
      2200 kim                  blue                             24/09/04       
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      7700 bbb                  seven                            24/09/04       
      8800 aaa                  red                              24/09/04       
      9900 goo                  gugu                             24/09/04       

7 rows selected.

SQL> insert into sosi values (2234, 'note', 'book');
insert into sosi values (2234, 'note', 'book')
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> insert into sosi(code, name, title) values(2234, 'note', 'book');

1 row created.

SQL> insert into sosi(code,name,title) values(7789,'tea','cake');

1 row created.

SQL> commit;

Commit complete.

SQL> select * from sosi order by code;

      CODE NAME                 TITLE                            BIRTH          
---------- -------------------- -------------------------------- --------       
      1100 one                  first                            24/09/04       
      2200 kim                  blue                             24/09/04       
      2234 note                 book                                            
      3300 ccc                  tree                             24/09/04       
      4400 nick                 test                             24/09/04       
      5500 lee                  five                             24/09/04       
      7700 bbb                  seven                            24/09/04       
      7789 tea                  cake                                            
      8800 aaa                  red                              24/09/04       
      9900 goo                  gugu                             24/09/04       

10 rows selected.

SQL> clear screen

SQL> col title for a10;
SQL> select * from sosi order by code;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
      1100 one                  first      24/09/04                             
      2200 kim                  blue       24/09/04                             
      2234 note                 book                                            
      3300 ccc                  tree       24/09/04                             
      4400 nick                 test       24/09/04                             
      5500 lee                  five       24/09/04                             
      7700 bbb                  seven      24/09/04                             
      7789 tea                  cake                                            
      8800 aaa                  red        24/09/04                             
      9900 goo                  gugu       24/09/04                             

10 rows selected.

SQL> select count() from sosi;
select count() from sosi
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select count(*) from sosi;

  COUNT(*)                                                                      
----------                                                                      
        10                                                                      

SQL> select count(birth) from sosi;

COUNT(BIRTH)                                                                    
------------                                                                    
           8                                                                    

SQL> select count(code) from sosi;

COUNT(CODE)                                                                     
-----------                                                                     
         10                                                                     

SQL> select code, name, title, birth from sosi;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
      2200 kim                  blue       24/09/04                             
      5500 lee                  five       24/09/04                             
      9900 goo                  gugu       24/09/04                             
      8800 aaa                  red        24/09/04                             
      7700 bbb                  seven      24/09/04                             
      3300 ccc                  tree       24/09/04                             
      4400 nick                 test       24/09/04                             
      1100 one                  first      24/09/04                             
      2234 note                 book                                            
      7789 tea                  cake                                            

10 rows selected.

SQL> select rownum code, name, title, birth, from sosi
  2  ;
select rownum code, name, title, birth, from sosi
                                        *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select rownum code, name, title, birth from sosi;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
         1 kim                  blue       24/09/04                             
         2 lee                  five       24/09/04                             
         3 goo                  gugu       24/09/04                             
         4 aaa                  red        24/09/04                             
         5 bbb                  seven      24/09/04                             
         6 ccc                  tree       24/09/04                             
         7 nick                 test       24/09/04                             
         8 one                  first      24/09/04                             
         9 note                 book                                            
        10 tea                  cake                                            

10 rows selected.

SQL> select * from sosi where code > 6600;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
      7700 bbb                  seven      24/09/04                             
      7789 tea                  cake                                            
      8800 aaa                  red        24/09/04                             
      9900 goo                  gugu       24/09/04                             

SQL> update sosi set name='summer' where code > 6600;

4 rows updated.

SQL> select * from sosi
  2  ;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
      2200 kim                  blue       24/09/04                             
      5500 lee                  five       24/09/04                             
      9900 summer               gugu       24/09/04                             
      8800 summer               red        24/09/04                             
      7700 summer               seven      24/09/04                             
      3300 ccc                  tree       24/09/04                             
      4400 nick                 test       24/09/04                             
      1100 one                  first      24/09/04                             
      2234 note                 book                                            
      7789 summer               cake                                            

10 rows selected.

SQL> select count(name) from sosi where name =summer;
select count(name) from sosi where name =summer
                                         *
ERROR at line 1:
ORA-00904: "SUMMER": invalid identifier 


SQL> select count(name) from sosi where name = 'summer';

COUNT(NAME)                                                                     
-----------                                                                     
          4                                                                     

SQL> rollback;

Rollback complete.

SQL> select from sosi
  2  ;
select from sosi
       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from sosi;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
      2200 kim                  blue       24/09/04                             
      5500 lee                  five       24/09/04                             
      9900 goo                  gugu       24/09/04                             
      8800 aaa                  red        24/09/04                             
      7700 bbb                  seven      24/09/04                             
      3300 ccc                  tree       24/09/04                             
      4400 nick                 test       24/09/04                             
      1100 one                  first      24/09/04                             
      2234 note                 book                                            
      7789 tea                  cake                                            

10 rows selected.

SQL> select table_name from user_tables;

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_PARAMETER$                                                               
LOGMNR_SESSION$                                                                 
MVIEW$_ADV_WORKLOAD                                                             
MVIEW$_ADV_BASETABLE                                                            
MVIEW$_ADV_SQLDEPEND                                                            
MVIEW$_ADV_PRETTY                                                               
MVIEW$_ADV_TEMP                                                                 
MVIEW$_ADV_FILTER                                                               
MVIEW$_ADV_LOG                                                                  
MVIEW$_ADV_FILTERINSTANCE                                                       
MVIEW$_ADV_LEVEL                                                                

TABLE_NAME                                                                      
------------------------------------------------------------                    
MVIEW$_ADV_ROLLUP                                                               
MVIEW$_ADV_AJG                                                                  
MVIEW$_ADV_FJG                                                                  
MVIEW$_ADV_GC                                                                   
MVIEW$_ADV_CLIQUE                                                               
MVIEW$_ADV_ELIGIBLE                                                             
MVIEW$_ADV_OUTPUT                                                               
MVIEW$_ADV_EXCEPTIONS                                                           
MVIEW$_ADV_PARAMETERS                                                           
MVIEW$_ADV_INFO                                                                 
MVIEW$_ADV_JOURNAL                                                              

TABLE_NAME                                                                      
------------------------------------------------------------                    
MVIEW$_ADV_PLAN                                                                 
AQ$_QUEUE_TABLES                                                                
AQ$_QUEUES                                                                      
AQ$_SCHEDULES                                                                   
AQ$_INTERNET_AGENTS                                                             
AQ$_INTERNET_AGENT_PRIVS                                                        
DEF$_ERROR                                                                      
DEF$_DESTINATION                                                                
DEF$_CALLDEST                                                                   
DEF$_DEFAULTDEST                                                                
DEF$_LOB                                                                        

TABLE_NAME                                                                      
------------------------------------------------------------                    
DEF$_PROPAGATOR                                                                 
DEF$_ORIGIN                                                                     
DEF$_PUSHED_TRANSACTIONS                                                        
REPCAT$_REPCAT                                                                  
REPCAT$_FLAVORS                                                                 
REPCAT$_REPSCHEMA                                                               
REPCAT$_SNAPGROUP                                                               
REPCAT$_REPOBJECT                                                               
REPCAT$_REPCOLUMN                                                               
REPCAT$_KEY_COLUMNS                                                             
REPCAT$_GENERATED                                                               

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_REPPROP                                                                 
REPCAT$_REPCATLOG                                                               
REPCAT$_DDL                                                                     
REPCAT$_REPGROUP_PRIVS                                                          
REPCAT$_PRIORITY_GROUP                                                          
REPCAT$_PRIORITY                                                                
REPCAT$_COLUMN_GROUP                                                            
REPCAT$_GROUPED_COLUMN                                                          
REPCAT$_CONFLICT                                                                
REPCAT$_RESOLUTION_METHOD                                                       
REPCAT$_RESOLUTION                                                              

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_RESOLUTION_STATISTICS                                                   
REPCAT$_RESOL_STATS_CONTROL                                                     
REPCAT$_PARAMETER_COLUMN                                                        
REPCAT$_AUDIT_ATTRIBUTE                                                         
REPCAT$_AUDIT_COLUMN                                                            
REPCAT$_FLAVOR_OBJECTS                                                          
REPCAT$_TEMPLATE_STATUS                                                         
REPCAT$_TEMPLATE_TYPES                                                          
REPCAT$_REFRESH_TEMPLATES                                                       
REPCAT$_USER_AUTHORIZATIONS                                                     
REPCAT$_OBJECT_TYPES                                                            

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_TEMPLATE_REFGROUPS                                                      
REPCAT$_TEMPLATE_OBJECTS                                                        
REPCAT$_TEMPLATE_PARMS                                                          
REPCAT$_OBJECT_PARMS                                                            
REPCAT$_USER_PARM_VALUES                                                        
REPCAT$_TEMPLATE_SITES                                                          
REPCAT$_SITE_OBJECTS                                                            
REPCAT$_RUNTIME_PARMS                                                           
REPCAT$_TEMPLATE_TARGETS                                                        
REPCAT$_EXCEPTIONS                                                              
REPCAT$_INSTANTIATION_DDL                                                       

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_EXTENSION                                                               
REPCAT$_SITES_NEW                                                               
LOGSTDBY$PARAMETERS                                                             
LOGSTDBY$EVENTS                                                                 
LOGSTDBY$APPLY_MILESTONE                                                        
LOGSTDBY$SCN                                                                    
LOGSTDBY$FLASHBACK_SCN                                                          
LOGSTDBY$PLSQL                                                                  
LOGSTDBY$SKIP_TRANSACTION                                                       
LOGSTDBY$SKIP                                                                   
LOGSTDBY$SKIP_SUPPORT                                                           

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGSTDBY$HISTORY                                                                
LOGSTDBY$EDS_TABLES                                                             
DEF$_AQCALL                                                                     
DEF$_AQERROR                                                                    
SQLPLUS_PRODUCT_PROFILE                                                         
HELP                                                                            
SOSI                                                                            
LOGMNR_GT_TAB_INCLUDE$                                                          
LOGMNR_GT_USER_INCLUDE$                                                         
LOGMNR_GT_XID_INCLUDE$                                                          
LOGMNRT_MDDL$                                                                   

TABLE_NAME                                                                      
------------------------------------------------------------                    
OL$                                                                             
OL$HINTS                                                                        
OL$NODES                                                                        
LOGMNR_DICTSTATE$                                                               
LOGMNRC_GTLO                                                                    
LOGMNRC_GTCS                                                                    
LOGMNRC_GSII                                                                    
LOGMNRC_GSBA                                                                    
LOGMNR_SEED$                                                                    
LOGMNR_DICTIONARY$                                                              
LOGMNR_OBJ$                                                                     

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_TAB$                                                                     
LOGMNR_COL$                                                                     
LOGMNR_ATTRCOL$                                                                 
LOGMNR_TS$                                                                      
LOGMNR_IND$                                                                     
LOGMNR_USER$                                                                    
LOGMNR_TABPART$                                                                 
LOGMNR_TABSUBPART$                                                              
LOGMNR_TABCOMPART$                                                              
LOGMNR_TYPE$                                                                    
LOGMNR_COLTYPE$                                                                 

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_ATTRIBUTE$                                                               
LOGMNR_LOB$                                                                     
LOGMNR_CDEF$                                                                    
LOGMNR_CCOL$                                                                    
LOGMNR_ICOL$                                                                    
LOGMNR_LOBFRAG$                                                                 
LOGMNR_INDPART$                                                                 
LOGMNR_INDSUBPART$                                                              
LOGMNR_INDCOMPART$                                                              
LOGMNR_LOGMNR_BUILDLOG                                                          
LOGMNR_NTAB$                                                                    

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_OPQTYPE$                                                                 
LOGMNR_SUBCOLTYPE$                                                              
LOGMNR_KOPM$                                                                    
LOGMNR_PROPS$                                                                   
LOGMNR_ENC$                                                                     
LOGMNR_REFCON$                                                                  
LOGMNR_PARTOBJ$                                                                 
LOGMNRP_CTAS_PART_MAP                                                           
LOGSTDBY$APPLY_PROGRESS                                                         
LOGMNR_INTEGRATED_SPILL$                                                        
LOGMNR_PROCESSED_LOG$                                                           

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_UID$                                                                     
LOGMNRC_DBNAME_UID_MAP                                                          
LOGMNR_LOG$                                                                     
LOGMNR_ERROR$                                                                   
LOGMNR_RESTART_CKPT$                                                            
LOGMNR_GLOBAL$                                                                  
LOGMNR_SESSION_EVOLVE$                                                          
LOGMNR_FILTER$                                                                  
LOGMNR_AGE_SPILL$                                                               
LOGMNR_SPILL$                                                                   
LOGMNR_RESTART_CKPT_TXINFO$                                                     

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_SESSION_ACTIONS$                                                         

155 rows selected.

SQL> clear screen

SQL> seelct * from sosiTemp;
SP2-0734: unknown command beginning "seelct * f..." - rest of line ignored.
SQL> select * from sosiTemp;
select * from sosiTemp
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> create table sosi
  2  as
  3  select * from sosiTemp;
select * from sosiTemp
              *
ERROR at line 3:
ORA-00942: table or view does not exist 


SQL> 
SQL> create table sosiTemp as select * from sosi;

Table created.

SQL> commit;

Commit complete.

SQL> select * from sosiTemp;

      CODE NAME                 TITLE      BIRTH                                
---------- -------------------- ---------- --------                             
      2200 kim                  blue       24/09/04                             
      5500 lee                  five       24/09/04                             
      9900 goo                  gugu       24/09/04                             
      8800 aaa                  red        24/09/04                             
      7700 bbb                  seven      24/09/04                             
      3300 ccc                  tree       24/09/04                             
      4400 nick                 test       24/09/04                             
      1100 one                  first      24/09/04                             
      2234 note                 book                                            
      7789 tea                  cake                                            

10 rows selected.

SQL> select table_name from user_tables;

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_PARAMETER$                                                               
LOGMNR_SESSION$                                                                 
MVIEW$_ADV_WORKLOAD                                                             
MVIEW$_ADV_BASETABLE                                                            
MVIEW$_ADV_SQLDEPEND                                                            
MVIEW$_ADV_PRETTY                                                               
MVIEW$_ADV_TEMP                                                                 
MVIEW$_ADV_FILTER                                                               
MVIEW$_ADV_LOG                                                                  
MVIEW$_ADV_FILTERINSTANCE                                                       
MVIEW$_ADV_LEVEL                                                                

TABLE_NAME                                                                      
------------------------------------------------------------                    
MVIEW$_ADV_ROLLUP                                                               
MVIEW$_ADV_AJG                                                                  
MVIEW$_ADV_FJG                                                                  
MVIEW$_ADV_GC                                                                   
MVIEW$_ADV_CLIQUE                                                               
MVIEW$_ADV_ELIGIBLE                                                             
MVIEW$_ADV_OUTPUT                                                               
MVIEW$_ADV_EXCEPTIONS                                                           
MVIEW$_ADV_PARAMETERS                                                           
MVIEW$_ADV_INFO                                                                 
MVIEW$_ADV_JOURNAL                                                              

TABLE_NAME                                                                      
------------------------------------------------------------                    
MVIEW$_ADV_PLAN                                                                 
AQ$_QUEUE_TABLES                                                                
AQ$_QUEUES                                                                      
AQ$_SCHEDULES                                                                   
AQ$_INTERNET_AGENTS                                                             
AQ$_INTERNET_AGENT_PRIVS                                                        
DEF$_ERROR                                                                      
DEF$_DESTINATION                                                                
DEF$_CALLDEST                                                                   
DEF$_DEFAULTDEST                                                                
DEF$_LOB                                                                        

TABLE_NAME                                                                      
------------------------------------------------------------                    
DEF$_PROPAGATOR                                                                 
DEF$_ORIGIN                                                                     
DEF$_PUSHED_TRANSACTIONS                                                        
REPCAT$_REPCAT                                                                  
REPCAT$_FLAVORS                                                                 
REPCAT$_REPSCHEMA                                                               
REPCAT$_SNAPGROUP                                                               
REPCAT$_REPOBJECT                                                               
REPCAT$_REPCOLUMN                                                               
REPCAT$_KEY_COLUMNS                                                             
REPCAT$_GENERATED                                                               

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_REPPROP                                                                 
REPCAT$_REPCATLOG                                                               
REPCAT$_DDL                                                                     
REPCAT$_REPGROUP_PRIVS                                                          
REPCAT$_PRIORITY_GROUP                                                          
REPCAT$_PRIORITY                                                                
REPCAT$_COLUMN_GROUP                                                            
REPCAT$_GROUPED_COLUMN                                                          
REPCAT$_CONFLICT                                                                
REPCAT$_RESOLUTION_METHOD                                                       
REPCAT$_RESOLUTION                                                              

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_RESOLUTION_STATISTICS                                                   
REPCAT$_RESOL_STATS_CONTROL                                                     
REPCAT$_PARAMETER_COLUMN                                                        
REPCAT$_AUDIT_ATTRIBUTE                                                         
REPCAT$_AUDIT_COLUMN                                                            
REPCAT$_FLAVOR_OBJECTS                                                          
REPCAT$_TEMPLATE_STATUS                                                         
REPCAT$_TEMPLATE_TYPES                                                          
REPCAT$_REFRESH_TEMPLATES                                                       
REPCAT$_USER_AUTHORIZATIONS                                                     
REPCAT$_OBJECT_TYPES                                                            

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_TEMPLATE_REFGROUPS                                                      
REPCAT$_TEMPLATE_OBJECTS                                                        
REPCAT$_TEMPLATE_PARMS                                                          
REPCAT$_OBJECT_PARMS                                                            
REPCAT$_USER_PARM_VALUES                                                        
REPCAT$_TEMPLATE_SITES                                                          
REPCAT$_SITE_OBJECTS                                                            
REPCAT$_RUNTIME_PARMS                                                           
REPCAT$_TEMPLATE_TARGETS                                                        
REPCAT$_EXCEPTIONS                                                              
REPCAT$_INSTANTIATION_DDL                                                       

TABLE_NAME                                                                      
------------------------------------------------------------                    
REPCAT$_EXTENSION                                                               
REPCAT$_SITES_NEW                                                               
LOGSTDBY$PARAMETERS                                                             
LOGSTDBY$EVENTS                                                                 
LOGSTDBY$APPLY_MILESTONE                                                        
LOGSTDBY$SCN                                                                    
LOGSTDBY$FLASHBACK_SCN                                                          
LOGSTDBY$PLSQL                                                                  
LOGSTDBY$SKIP_TRANSACTION                                                       
LOGSTDBY$SKIP                                                                   
LOGSTDBY$SKIP_SUPPORT                                                           

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGSTDBY$HISTORY                                                                
LOGSTDBY$EDS_TABLES                                                             
DEF$_AQCALL                                                                     
DEF$_AQERROR                                                                    
SQLPLUS_PRODUCT_PROFILE                                                         
HELP                                                                            
SOSI                                                                            
SOSITEMP                                                                        
LOGMNR_GT_TAB_INCLUDE$                                                          
LOGMNR_GT_USER_INCLUDE$                                                         
LOGMNR_GT_XID_INCLUDE$                                                          

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNRT_MDDL$                                                                   
OL$                                                                             
OL$HINTS                                                                        
OL$NODES                                                                        
LOGMNR_DICTSTATE$                                                               
LOGMNRC_GTLO                                                                    
LOGMNRC_GTCS                                                                    
LOGMNRC_GSII                                                                    
LOGMNRC_GSBA                                                                    
LOGMNR_SEED$                                                                    
LOGMNR_DICTIONARY$                                                              

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_OBJ$                                                                     
LOGMNR_TAB$                                                                     
LOGMNR_COL$                                                                     
LOGMNR_ATTRCOL$                                                                 
LOGMNR_TS$                                                                      
LOGMNR_IND$                                                                     
LOGMNR_USER$                                                                    
LOGMNR_TABPART$                                                                 
LOGMNR_TABSUBPART$                                                              
LOGMNR_TABCOMPART$                                                              
LOGMNR_TYPE$                                                                    

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_COLTYPE$                                                                 
LOGMNR_ATTRIBUTE$                                                               
LOGMNR_LOB$                                                                     
LOGMNR_CDEF$                                                                    
LOGMNR_CCOL$                                                                    
LOGMNR_ICOL$                                                                    
LOGMNR_LOBFRAG$                                                                 
LOGMNR_INDPART$                                                                 
LOGMNR_INDSUBPART$                                                              
LOGMNR_INDCOMPART$                                                              
LOGMNR_LOGMNR_BUILDLOG                                                          

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_NTAB$                                                                    
LOGMNR_OPQTYPE$                                                                 
LOGMNR_SUBCOLTYPE$                                                              
LOGMNR_KOPM$                                                                    
LOGMNR_PROPS$                                                                   
LOGMNR_ENC$                                                                     
LOGMNR_REFCON$                                                                  
LOGMNR_PARTOBJ$                                                                 
LOGMNRP_CTAS_PART_MAP                                                           
LOGSTDBY$APPLY_PROGRESS                                                         
LOGMNR_INTEGRATED_SPILL$                                                        

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_PROCESSED_LOG$                                                           
LOGMNR_UID$                                                                     
LOGMNRC_DBNAME_UID_MAP                                                          
LOGMNR_LOG$                                                                     
LOGMNR_ERROR$                                                                   
LOGMNR_RESTART_CKPT$                                                            
LOGMNR_GLOBAL$                                                                  
LOGMNR_SESSION_EVOLVE$                                                          
LOGMNR_FILTER$                                                                  
LOGMNR_AGE_SPILL$                                                               
LOGMNR_SPILL$                                                                   

TABLE_NAME                                                                      
------------------------------------------------------------                    
LOGMNR_RESTART_CKPT_TXINFO$                                                     
LOGMNR_SESSION_ACTIONS$                                                         

156 rows selected.

SQL> clear screen

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE

SQL> asc sosi;
SP2-0042: unknown command "asc sosi" - rest of line ignored.
SQL> alter table sosi add(hit number(3));

Table altered.

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE
 HIT                                                NUMBER(3)

SQL> alter table sosi add (hit number(3) default 0 );
alter table sosi add (hit number(3) default 0 )
                      *
ERROR at line 1:
ORA-01430: column being added already exists in table 


SQL> alter table sosi add(wdate date default sysdate);

Table altered.

SQL> ALTER TABLE sosi MODIFY hit NUMBER(3) DEFAULT 0;

Table altered.

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(16)
 BIRTH                                              DATE
 HIT                                                NUMBER(3)
 WDATE                                              DATE

SQL> alter table sosi modify(title varchar2(10));

Table altered.

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(10)
 BIRTH                                              DATE
 HIT                                                NUMBER(3)
 WDATE                                              DATE

SQL> select * from sosi;

      CODE NAME                 TITLE      BIRTH           HIT WDATE            
---------- -------------------- ---------- -------- ---------- --------         
      2200 kim                  blue       24/09/04            24/09/04         
      5500 lee                  five       24/09/04            24/09/04         
      9900 goo                  gugu       24/09/04            24/09/04         
      8800 aaa                  red        24/09/04            24/09/04         
      7700 bbb                  seven      24/09/04            24/09/04         
      3300 ccc                  tree       24/09/04            24/09/04         
      4400 nick                 test       24/09/04            24/09/04         
      1100 one                  first      24/09/04            24/09/04         
      2234 note                 book                           24/09/04         
      7789 tea                  cake                           24/09/04         

10 rows selected.

SQL> alter table sosi rename column name to ename;

Table altered.

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 ENAME                                     NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(10)
 BIRTH                                              DATE
 HIT                                                NUMBER(3)
 WDATE                                              DATE

SQL> select * from sosi;

      CODE ENAME                TITLE      BIRTH           HIT WDATE            
---------- -------------------- ---------- -------- ---------- --------         
      2200 kim                  blue       24/09/04            24/09/04         
      5500 lee                  five       24/09/04            24/09/04         
      9900 goo                  gugu       24/09/04            24/09/04         
      8800 aaa                  red        24/09/04            24/09/04         
      7700 bbb                  seven      24/09/04            24/09/04         
      3300 ccc                  tree       24/09/04            24/09/04         
      4400 nick                 test       24/09/04            24/09/04         
      1100 one                  first      24/09/04            24/09/04         
      2234 note                 book                           24/09/04         
      7789 tea                  cake                           24/09/04         

10 rows selected.

SQL> alter table sosi drop column birth;

Table altered.

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CODE                                      NOT NULL NUMBER(4)
 ENAME                                     NOT NULL VARCHAR2(10)
 TITLE                                     NOT NULL VARCHAR2(10)
 HIT                                                NUMBER(3)
 WDATE                                              DATE

SQL> select * from sosi;

      CODE ENAME                TITLE             HIT WDATE                     
---------- -------------------- ---------- ---------- --------                  
      2200 kim                  blue                  24/09/04                  
      5500 lee                  five                  24/09/04                  
      9900 goo                  gugu                  24/09/04                  
      8800 aaa                  red                   24/09/04                  
      7700 bbb                  seven                 24/09/04                  
      3300 ccc                  tree                  24/09/04                  
      4400 nick                 test                  24/09/04                  
      1100 one                  first                 24/09/04                  
      2234 note                 book                  24/09/04                  
      7789 tea                  cake                  24/09/04                  

10 rows selected.

SQL> spool off;

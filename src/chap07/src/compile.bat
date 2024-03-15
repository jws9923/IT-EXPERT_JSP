SET CATALINA_HOME=C:/java/Tomcat4.1
SET CLASSPATH=.;%CATALINA_HOME%/common/lib/servlet.jar;
SET CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/common/lib/classes12.jar;
SET CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/common/lib/jdc-pool.jar

mkdir ..\classes
javac -d ../classes itexpert/chap07/*.java

sqlplus scott/tiger < ..\sql\auth.sql
sqlplus scott/tiger < ..\sql\member_info.sql
sqlplus scott/tiger < ..\sql\clob_table.sql

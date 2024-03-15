SET CATALINA_HOME=C:/java/Tomcat4.1
SET CLASSPATH=.;%CATALINA_HOME%/common/lib/servlet.jar;
SET CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/common/lib/classes12.jar;

mkdir ..\classes\itexpert\chap09\msg

javac -d ../classes itexpert/chap07/*.java

copy itexpert\chap09\msg\TestBundle.properties ..\classes\itexpert\chap09\msg\TestBundle.properties
native2ascii itexpert/chap09/msg/TestBundle_ko.properties ../classes/itexpert/chap09/msg/TestBundle_ko.properties

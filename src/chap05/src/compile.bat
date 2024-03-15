SET CATALINA_HOME=C:/java/Tomcat4.1
SET CLASSPATH=.;%CATALINA_HOME%/common/lib/servlet.jar;
SET CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/common/lib/classes12.jar;

mkdir ..\classes
javac -d ../classes itexpert/chap05/*.java

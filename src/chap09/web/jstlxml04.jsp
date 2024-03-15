<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>

<html>
<head>
  <title>JSTL: XML Support -- Transform</title>
</head>
<body bgcolor="#FFFFFF">
<h1>ฟฌถ๔รณ</h1>
<c:import var="xml" url="namecard.xml" charEncoding="MS949"/>
<c:import var="xsl" url="namecard.xsl" charEncoding="MS949"/>

<x:transform xml="${xml}" xslt="${xsl}"/>

</body>
</html>

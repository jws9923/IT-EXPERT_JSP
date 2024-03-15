<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>

<html>
<head>
  <title>JSTL: XML Support -- Transform</title>
</head>
<body bgcolor="#FFFFFF">
<c:set var="xml">
    <?xml version="1.0" encoding="MS949"?>
    <namecard>
        <person>
            <name>허광남</name>
            <id>남자</id>
            <email>kenu@email.com</email>
            <phone>111-2222-3333</phone>
        </person>
        <person>
            <name>노재춘</name>
            <id>남자</id>
            <email>suribada@email.com</email>
            <phone>222-3333-4444</phone>
        </person>
        <person>
            <name>이선재</name>
            <id>남자</id>
            <email>hsboy@email.com</email>
            <phone>333-4444-5555</phone>
        </person>
    </namecard>
</c:set>

<c:set var="xsl">
    <?xml version="1.0"?>
    <xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:template match="/">
        <table border="1">
            <tr>
                <th>이름  </th>
                <th>이메일</th>
                <th>연락처</th>
            </tr>
        <xsl:for-each select="namecard/person">
            <tr>
                <td><xsl:value-of select="name" /></td>
                <td><xsl:value-of select="email" /></td>
                <td><xsl:value-of select="phone" /></td>
            </tr>
        </xsl:for-each>
        </table>
        </xsl:template>

    </xsl:stylesheet>
</c:set>

<x:transform xml="${xml}" xslt="${xsl}"/>

</body>
</html>


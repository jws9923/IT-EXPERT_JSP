<?xml version="1.0" encoding="euc-kr" ?>
<xsl:stylesheet
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <table border="1">
        <tr>
            <th>�̸�  </th>
            <th>�̸���</th>
            <th>����ó</th>
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

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Task #2</title>
</head>
<body>
<h2>Attestation</h2>
<table border="2">
<tr bgcolor="#9acd32">
<th>Номер</th>
<th>Студент</th>
<th>Оценка</th>
</tr>
<xsl:for-each select="attestation/student">
<tr>
<td><xsl:value-of select="number"/></td>
<td><xsl:value-of select="name"/></td>
<xsl:if test="mark &lt; 4">
                  <td style="background-color:red"><xsl:value-of select = "mark"/></td>
                  </xsl:if>

                  <xsl:if test="mark &gt; 8">
                  <td style="background-color:green"><xsl:value-of select = "mark"/></td>
                  </xsl:if>

                  <xsl:if test="mark &gt; 4 and mark &lt; 9">
                  <td style="background-color:white"><xsl:value-of select = "mark"/></td>
                </xsl:if>
</tr>
</xsl:for-each>
</table></body></html>
</xsl:template>
</xsl:stylesheet>
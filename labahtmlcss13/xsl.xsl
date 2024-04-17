<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Task #1</title>
</head>
<body>
<h2>Numbers/Letters</h2>
<table border="2">
<tr bgcolor="#9acd32">
<th>Номер</th>
<th>Буква</th>
</tr>
<xsl:for-each select="sort/element">
<xsl:sort select="number" order="descending" data-type="number"/>
<xsl:sort select="letter" order="descending" data-type="text"/>
<tr>
<td><xsl:value-of select="number"/></td>
<td><xsl:value-of select="letter"/></td>
</tr>
</xsl:for-each>
</table></body></html>
</xsl:template>
</xsl:stylesheet>
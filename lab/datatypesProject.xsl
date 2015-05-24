<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head lang="en">
                <link href="../style/baseStyles.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Short Name</th>
                        <th>.NET Class</th>
                        <th>Type</th>
                        <th>Width</th>
                        <th>Range (bits)</th>
                    </tr>
                    <xsl:for-each select="table/row[position()>1]">
                        <xsl:sort select="name"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="class"/></td>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="width"/></td>
                            <td><xsl:value-of select="range"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
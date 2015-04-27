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
                        <th>Number</th>
                        <th>Short Name</th>
                        <th>.NET Class</th>
                        <th>Type</th>
                        <th>Width</th>
                        <th>Range (bits)</th>
                    </tr>
                    <xsl:for-each select="table/row[position()>1]">
                        <xsl:sort select="name"/>
                        <tr>
                            <!--USE WITHOUT CODE BELOW-->
                            <!--<xsl:if test="class[contains(@href,'byte')]">-->
                                <!--<td><xsl:value-of select="name"/></td>-->
                                <!--<td><xsl:value-of select="class"/></td>-->
                                <!--<td><xsl:value-of select="type"/></td>-->
                                <!--<td><xsl:value-of select="width"/></td>-->
                                <!--<td><xsl:value-of select="range"/></td>-->
                            <!--</xsl:if>-->

                            <td><xsl:number value="position()"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <xsl:choose>
                                <xsl:when test="contains(class,'Int')">
                                    <td><xsl:value-of select="upper-case(class)"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="class"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="width"/></td>
                            <td><xsl:value-of select="range"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>Sum of numeric values</h3>
                <h3><xsl:value-of select="sum(//width)"/></h3>
                <h3>Arithmetic mean of Width column</h3>
                <h3><xsl:value-of select="sum(//width) div count(//width)"/></h3>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
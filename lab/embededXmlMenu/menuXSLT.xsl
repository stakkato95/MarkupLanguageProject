<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <body>
            <ul class="nav">
                <xsl:for-each select="menu/level_1">
                    <li>
                        <a>
                            <xsl:attribute name=".@href"/>
                            <xsl:value-of select="title"/>
                        </a>
                        <xsl:if test="count(.level_2) &gt; 0">
                            <xsl:for-each select=".level_2">
                                <ul>
                                <li>
                                    <a>
                                        <xsl:attribute name=".@href"/>
                                        <xsl:value-of select="title"/>
                                    </a>
                                </li>
                                </ul>
                            </xsl:for-each>
                        </xsl:if>
                    </li>
                </xsl:for-each>
            </ul>
        </body>
    </xsl:template>
</xsl:stylesheet>
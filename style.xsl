<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Define the output format as HTML -->
    <xsl:output method="html" indent="yes"/>
    
    <!-- Apply a template for the root element -->
    <xsl:template match="/document">
        <html>
            <head>
                <title><xsl:value-of select="head/title"/></title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    h1 { color: blue; }
                    ul { list-style-type: square; }
                    li { margin: 5px 0; }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="body/h1"/></h1>
                <xsl:apply-templates select="body/ul"/>
                <h2><xsl:value-of select="body/h2"/></h2>
                <xsl:apply-templates select="body/ul[2]"/>
            </body>
        </html>
    </xsl:template>

    <!-- Template to handle <ul> elements -->
    <xsl:template match="ul">
        <ul>
            <xsl:apply-templates select="li"/>
        </ul>
    </xsl:template>

    <!-- Template to handle <li> elements -->
    <xsl:template match="li">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

</xsl:stylesheet>

<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Fibonacci</title>
            </head>
            <body>
                <xsl:call-template name="iterate">
                    <xsl:with-param name="number" select="1"/>
                </xsl:call-template>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="iterate">
        <xsl:param name="number"/>
        <xsl:variable name="next" select="$number + 1"/>
        <xsl:element name="p">
            <xsl:call-template name="calculateFibonacci">
                <xsl:with-param name="index" select="$number"/>
            </xsl:call-template>
        </xsl:element>
        <xsl:if test="$number &lt; 19">
            <xsl:call-template name="iterate">
                <xsl:with-param name="number" select="$next"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="calculateFibonacci">
        <xsl:param name="index"/>
        <xsl:param name="currentFibonacciNumber" select="1"/>
        <xsl:param name="nextFibonacciNumber" select="1"/>
        <xsl:choose>
            <xsl:when test="$index &lt;= 1">
                <xsl:value-of select="$currentFibonacciNumber"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="calculateFibonacci">
                    <xsl:with-param name="index" select="$index - 1"/>
                    <xsl:with-param name="currentFibonacciNumber" select="$nextFibonacciNumber"/>
                    <xsl:with-param name="nextFibonacciNumber" select="$currentFibonacciNumber + $nextFibonacciNumber"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>

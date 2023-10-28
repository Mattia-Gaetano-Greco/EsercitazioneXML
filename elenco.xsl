<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>            
                <h1 align="center">Dettagli hotel</h1>
                <table border="3" align="center" >
                    <tr>
                        <th>Provincia</th>
                        <th>Comune</th>
                        <th>Nome classe</th>
                    </tr>
                    <xsl:for-each select="alberghi/albergo">
                        <tr>
                            <td><xsl:value-of select="provincia"/></td>
                            <td><xsl:value-of select="comune"/></td>
                            <td><xsl:value-of select="sovraclasse/classe/@nome"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
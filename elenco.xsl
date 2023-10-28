<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                
                <style>
                    *{
                        color: white;
                        box-sizing: border-box;
                        -webkit-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                    }
                    body{
                        font-family: Helvetica;
                        -webkit-font-smoothing: antialiased;
                        background: rgba( 71, 147, 227, 1);
                        text-align: center;
                        font-size: 35px;
                        text-transform: uppercase;
                        letter-spacing: 1px;
                        color: white;
                        padding: 30px 0;
                    }
                </style>
            </head>

            <body>
                <h1 align="center">Dettagli hotel</h1>
                <div class="container">
                    
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

                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
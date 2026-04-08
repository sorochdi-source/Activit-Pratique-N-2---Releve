<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Opérations CREDIT</title>
            </head>
            
            <body>                
                <ul>
                    <li>RIB : <xsl:value-of select="releve/@RIB"/></li>
                    <li>Date du relevé : <xsl:value-of select="releve/dateReleve"/></li>
                    <li>Solde : <xsl:value-of select="releve/solde"/></li>
                </ul>
                
                <table border="1" width="100%">
                    <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                        
                        <tr>
                            <td>
                                <xsl:value-of select="@type"/>
                            </td>                            
                            <td>
                                <xsl:value-of select="@date"/>
                            </td>                            
                            <td>
                                <xsl:value-of select="@montant"/>
                            </td>                            
                            <td>
                                <xsl:value-of select="@description"/>
                            </td>                            
                        </tr>                        
                    </xsl:for-each>                    
                    <tr>
                        <td>Nombre des opérations CREDIT</td>
                        <td colspan="3">
                            <xsl:value-of select="count(releve/operations/operation[@type='CREDIT'])"/>
                        </td>
                    </tr>                    
                </table>                
            </body>
        </html>        
    </xsl:template>    
</xsl:stylesheet>
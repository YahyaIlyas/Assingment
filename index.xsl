<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/Kaka-Store">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>

    <body>
        <h1>Kaka's Store</h1>
        <table border="1">
            <tr bgcolor="red">
                <th>Product-Id</th>
                <th>Product-Name</th>
                <th>Quantity</th>
                <th>Price-Per-Unit</th>
                <th>Price-Per-Doz</th>
                <th>In-Stock</th>
            </tr>
    <xsl:for-each select="Stationery">
     
            <xsl:if test="Quantity ">
        <tr>
            <td><xsl:value-of select="Product-Id"></xsl:value-of></td>
            <td><xsl:value-of select="Product-Name"></xsl:value-of></td>
            <td><xsl:value-of select="Quantity"></xsl:value-of></td>
            <td><xsl:value-of select="Price-Per-Unit"></xsl:value-of></td>
            <td><xsl:value-of select="Price-Per-Doz"></xsl:value-of></td>
            <td><xsl:value-of select="In-Stock"></xsl:value-of></td>
        </tr>
    </xsl:if>
    </xsl:for-each>
    
    
    
        </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
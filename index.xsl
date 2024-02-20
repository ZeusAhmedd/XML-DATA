<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="root">

<html>
    <head>
        <style>
            table{height:500px;width:500px;}
            tr , th ,td {
                padding:10px;
                color:white;
            }
            h1{
                color:red;
                text-align:center;
                text-decoration:underline;
                text-decoration-color:blue;
            }
        </style>
    </head>
    <body>
        <h1>Student Information</h1>
        <table border="1px" align="center" > 
            <tr bgcolor="red">
                <th>name</th>
                <th>age</th>
                <th>address</th>
                <th>gender</th>
            </tr>
<xsl:for-each select="child">
    <tr bgcolor="blue">
        <td><xsl:value-of select="name"></xsl:value-of></td>
        <td><xsl:value-of select="age"></xsl:value-of></td>
        <td><xsl:value-of select="address"></xsl:value-of></td>
        <td><xsl:value-of select="gender"></xsl:value-of></td>
    </tr>
</xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>

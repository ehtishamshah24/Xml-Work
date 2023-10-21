<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Data Print</title>
    <link rel="stylesheet" href="data.css"/>
    </head>
    <body>

        <h1 >Data Print</h1>
<div>
        <table>
            <tr >
              <th>Name</th>
              <th>Designation</th>
              <th>Age</th>
            </tr>
            <xsl:for-each select="aptech/faculty">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="designation"/></td>
              <td><xsl:value-of select="age"/></td>
            </tr>
            </xsl:for-each>
          </table>
        </div>
        
    </body>
    </html>
</xsl:template>


</xsl:stylesheet>

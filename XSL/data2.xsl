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
    </head>
    <body>

        <h1 style="color:red">Data Print</h1>

        <table border="1">
            <tr  >
              <th>Name</th>
              <th>Price</th>
              <th>Image</th>
            </tr>
            <xsl:for-each select="category/product">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><img height="50px" src="images/{image}" alt=""/></td>
            </tr>
            </xsl:for-each>
          </table>
        
    </body>
    </html>
</xsl:template>


</xsl:stylesheet>